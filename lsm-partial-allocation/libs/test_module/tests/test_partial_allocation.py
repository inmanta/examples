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


def test_partial_allocation(project: Project, remote_orchestrator: RemoteOrchestrator):
    # We setup the test, we ensure that the vlan-pool file exists and only contains the range
    vlan_pool = {
        "range": {
            "from": 100,
            "to": 101,
        }
    }
    project.compile(
        f"""
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
        """
    )
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
            "name": "test1",
        },
        wait_for_state="rejected",
        bad_states=["up", "failed"],
    )

    # We check that only the first vlan got allocated
    response = remote_orchestrator.client.lsm_services_get(
        tid=remote_orchestrator.environment,
        service_entity=vlan_service.service_entity_name,
        service_id=vlan_service.instance_id,
    )
    assert (
        response.code == 200
    ), f"Wrong response code while trying to get state, got {response.code} (expected 200): \n{response}"
    assert response.result["data"]["candidate_attributes"].get("north_vlan_id") == 100
    assert response.result["data"]["candidate_attributes"].get("south_vlan_id") is None

    vlan_service.delete(wait_for_state="terminated")
