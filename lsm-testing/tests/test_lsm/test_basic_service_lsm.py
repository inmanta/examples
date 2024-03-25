"""
:copyright: 2024 Inmanta
:contact: code@inmanta.com
:license: Inmanta EULA
"""

import inmanta_lsm.model  # type: ignore
import pytest_inmanta.plugin
import pytest_inmanta_lsm.lsm_project
import pytest_inmanta_lsm.remote_orchestrator
import pytest_inmanta_lsm.remote_service_instance_async
import pytest_inmanta_lsm.util


async def service_lifecycle(
    remote_orchestrator: pytest_inmanta_lsm.remote_orchestrator.RemoteOrchestrator,
    name: str,
) -> None:
    """
    Test the full lifecycle of our service.

    :param remote_orchestrator: The remote orchestrator where we can create our
        service.
    :param orderId: The order id we should assign to our new service.
    :param items: The names of the items we should create.
    """
    instance = pytest_inmanta_lsm.remote_service_instance_async.RemoteServiceInstance(
        remote_orchestrator=remote_orchestrator,
        service_entity_name="BasicService",
    )

    # Create the instance with the provided parameters
    up = await instance.create(
        attributes={
            "name": name,
        },
        wait_for_state="up",
        bad_states=["rejected", "failed"],
    )

    # Trigger an update, add an item and remove an item
    updated = await instance.update(
        [
            inmanta_lsm.model.PatchCallEdit(
                edit_id="update-service-description",
                operation=inmanta_lsm.model.EditOperation.replace,
                target="description",
                value="This is the updated service description",
            ),
        ],
        current_version=up.version,
        wait_for_state="up",
        bad_states=["update_rejected", "update_failed"],
    )

    # Delete the service
    await instance.delete(
        current_version=updated.version,
        wait_for_state="terminated",
    )


def test_service_lifecycle(
    project: pytest_inmanta.plugin.Project,
    remote_orchestrator: pytest_inmanta_lsm.remote_orchestrator.RemoteOrchestrator,
) -> None:
    # Compile our project
    project.compile(
        """
        import integration_example::services::basic
        import integration_example::services::basic::lsm
        """,
        no_dedent=False,
    )

    # Export the service catalog to the remote orchestrator
    remote_orchestrator.export_service_entities()

    # Create a few services, then wait for all of them to go through their lifecycle
    services = [
        service_lifecycle(
            remote_orchestrator,
            name=f"test-{i}",
        )
        for i in range(5)
    ]

    pytest_inmanta_lsm.util.sync_execute_scenarios(*services)
