"""
    Copyright 2021 Inmanta

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.

    Contact: code@inmanta.com
"""

import json
import logging
import os
from typing import Any, Dict, List, Optional, Set

from filelock import FileLock
from inmanta_plugins.lsm.allocation import (
    AllocationContext,
    AllocationSpec,
    Allocator,
    AllocatorWrapper,
)

from inmanta import config
from inmanta.agent.handler import CRUDHandler, HandlerContext, ResourcePurged, provider
from inmanta.plugins import plugin
from inmanta.resources import PurgeableResource, resource

LOGGER = logging.getLogger(__name__)


@plugin
def vlan_pool_file(environment: "string") -> "string":
    return os.path.join(config.state_dir.get(), environment, "vlan-pool.json")


class VlanPool:
    """
    This class represents an external allocator, that can provide some free vlan ids, and
    free them.

    The implementation is really simple, all available and allocated vlans are stored in a
    file, this file is loaded and saved on every actions.
    """

    def __init__(self, path: str) -> None:
        """
        :param path: The path to the file saving the vlans.  This file should exist and contain
            a json with range.from and range.to specified.  Those indicates the range of vlans
            that can be used.
        """
        self._path = path
        self._version = None
        self._range = None
        self._used = None

    def _load(self) -> None:
        """
        This needs to be called before doing any operation on the pool
        """
        with open(self._path, "r") as f:
            pool: Dict = json.load(f)
            self._version = pool.get("version", 0)

            range: Dict[str, int] = pool.get("range", {})
            self._range = (range.get("from", 0), range.get("to", 0))

            self._used: Set[int] = set(pool.get("used", list()))

    def _save(self) -> None:
        """
        This needs to be called after doing any operation.  It will commit any changes done since last
        call to _load.  This will fail if any other process edited the file (and the version) in the
        meantime.
        """
        with FileLock(self._path + ".lock"):
            with open(self._path, "r") as f:
                pool: Dict = json.load(f)
                version = pool.get("version", 0)
                if version != self._version:
                    # This is how we guarantee that any operation on the file will be a transaction.
                    # Anyone modifying the file should increase the version or its changes might be
                    # overwritten.

                    raise RuntimeError(
                        "Version mismatch, the file has been modified since last load"
                    )

            version += 1

            with open(self._path, "w") as f:
                f.write(
                    json.dumps(
                        {
                            "version": version,
                            "range": {
                                "from": self._range[0],
                                "to": self._range[1],
                            },
                            "used": list(self._used),
                        }
                    )
                )

    def _get_first_free_vlan(self) -> Optional[int]:
        for vlan in range(self._range[0], self._range[1]):
            if vlan not in self._used:
                return vlan

        return None

    def reserve_vlan(self) -> int:
        """
        Get an reserve the first available vlan
        """
        self._load()
        vlan = self._get_first_free_vlan()
        if vlan is None:
            raise RuntimeError("No more available vlans")

        self._used.add(vlan)
        self._save()

        return vlan

    def is_used(self, vlan: int) -> bool:
        """
        Check whether the provided vlan has been allocated or not
        """
        self._load()
        return vlan in self._used

    def free_vlan(self, vlan: int) -> None:
        """
        Free the vlan that is hold by the provided key.  If this key is not in used it
        will fail.
        """
        # self._load() done in self.is_used(vlan)
        if not self.is_used(vlan):
            raise RuntimeError("This vlan id has not been allocated")

        self._used.remove(vlan)
        self._save()


class ExternalVlanAllocator(Allocator):
    """
    This is the vlan allocator, it only takes VlanService instances and will fill two of their attributes:
        - vlan_id, contianing the allocated vlan
        - vlan_allocation_key, the key that should be used for deallocation
    """

    def __init__(self, vlan_attribute: str) -> None:
        self.vlan_attribute = vlan_attribute

    def get_attributes(self) -> List[str]:
        return [self.vlan_attribute]

    def allocate_for(
        self, ctx: AllocationContext, instance: Dict[str, Any]
    ) -> Dict[str, Any]:
        vlan = VlanPool(vlan_pool_file(ctx.env)).reserve_vlan()
        return {
            self.vlan_attribute: vlan,
        }


@resource("test_module::VlanDeallocation", agent="agent", id_attribute="vlan_id")
class VlanDeallocationResource(PurgeableResource):
    fields = ("vlan_id",)


@provider("test_module::VlanDeallocation", name="vlan_deallocation")
class VlanDeallocation(CRUDHandler):
    def __init__(self, *args, **kwargs):
        super(VlanDeallocation, self).__init__(*args, **kwargs)
        # The state_dir of the handler already contains the environment id
        self.vlan_pool = VlanPool(vlan_pool_file(""))

    def read_resource(
        self, ctx: HandlerContext, resource: VlanDeallocationResource
    ) -> None:
        if not self.vlan_pool.is_used(resource.vlan_id):
            raise ResourcePurged()

    def delete_resource(
        self, ctx: HandlerContext, resource: VlanDeallocationResource
    ) -> None:
        self.vlan_pool.free_vlan(resource.vlan_id)


AllocationSpec(
    "vlan_allocator",
    AllocatorWrapper(
        ExternalVlanAllocator(
            vlan_attribute="north_vlan_id",
        ),
        ExternalVlanAllocator(
            vlan_attribute="south_vlan_id",
        ),
    ),
)
