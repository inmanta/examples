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

import inmanta_plugins.lsm.allocation as lsm
from typing import Any, Dict


class InnerServiceAllocator(lsm.ExternalAttributeAllocator[Dict[str, Any]]):
    """A mock allocator that should get all attributes from the inventory"""

    def __init__(self):
        super().__init__("inner_data", "customer_ref")

    def allocate_for_attribute(self, id_attribute_value: str) -> Dict[str, Any]:
        """
        The structure of this object should match that of InnerService
        """
        return {"parameter_a": f"this is allocated for {id_attribute_value}"}


lsm.AllocationSpec("allocate_OuterService", InnerServiceAllocator())
