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

from helpers import recompile_environment
from pytest_inmanta.plugin import Project
from pytest_inmanta_lsm.remote_orchestrator import RemoteOrchestrator


def test_basics(project: Project, remote_orchestrator: RemoteOrchestrator):
    # We setup the test, we ensure that the vlan-pool file exists and only contains the range
    vlan_pool = {
        "range": {
            "from": 100,
            "to": 200,
        }
    }
    project.compile(f"""
            import test_module

            std::File(
                path=test_module::vlan_pool_file(std::environment()),
                mode=664,
                owner="inmanta",
                group="inmanta",
                content='{json.dumps(vlan_pool)}',
                purge_on_delete=false,
                host=std::Host(
                    name="internal",
                    os=std::linux,
                )
            )
        """)
    # Exporting the model
    remote_orchestrator.export_service_entities()

    # Triggering a compile to deploy the vlan-pool file
    recompile_environment(remote_orchestrator.client, remote_orchestrator.environment)

    # The real test starts here
    # The vlan-pool file is removed from the model so that the orchestrator doesn't try to
    # repair it
    project.compile("import test_module")
    remote_orchestrator.export_service_entities()

    vlan_service = remote_orchestrator.get_managed_instance("vlan_service")
    vlan_service.create(
        attributes={
            "name": "test",
        },
        wait_for_state="up",
    )

    vlan_service.delete(wait_for_state="terminated")
