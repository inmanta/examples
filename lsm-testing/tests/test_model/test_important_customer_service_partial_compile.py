"""
:copyright: 2024 Inmanta
:contact: code@inmanta.com
:license: Inmanta EULA
"""

import copy
import logging

import pytest_inmanta_lsm.lsm_project

LOGGER = logging.getLogger(__name__)

SHARED_RESOURCES = [
    r"std::AgentConfig\[.*\]",
    r"std::Directory\[localhost,path=/tmp/orders\]",
    r"std::Directory\[localhost,path=/tmp/items\]",
]
OWNED_RESOURCES = [
    r"std::Directory\[localhost,path=/tmp/orders/.*\]",
    r"std::File\[localhost,path=/tmp/orders/.*\]",
    r"std::Symlink\[localhost,target=/tmp/orders/.*\]",
    r"std::File\[localhost,path=/tmp/items/.*\]",
    r"lsm::LifecycleTransfer\[.*\]",
]


def test_multi_services(
    lsm_project: pytest_inmanta_lsm.lsm_project.LsmProject,
) -> None:
    """
    In this test case we will test the partial compile capability of our service.
    Triggering compiles for all the states of the service lifecycle, and making sure
    that all the emitted resources (in the shared or the owned sets) don't violate
    any of the rules set by the orchestrator.

    https://docs.inmanta.com/inmanta-service-orchestrator/7/model_developers/resource_sets.html#partial-compiles
    """
    lsm_project.partial_compile = True

    # Make sure that our service definition is valid, trigger an export
    # into our mocked catalog
    lsm_project.export_service_entities(
        "import integration_example::services::important_customer::lsm"
    )

    # Create an add services to our inventory
    services = [
        lsm_project.create_service(
            service_entity_name="ImportantCustomerService",
            attributes={
                "order_id": f"test-{i}",
                "documentation": {
                    "customer_reference": "some customer",
                    "description": f"This is test service {i}",
                },
                "items": [
                    {
                        "name": f"item-{j}",
                    }
                    for j in range(i)
                ],
            },
            auto_transfer=True,
        )
        for i in range(0, 2)
    ]

    # Create all the orders
    for service in services:
        assert service.state == "creating"
        lsm_project.compile(service_id=service.id, validation=False)
        lsm_project.post_partial_compile_validation(
            service.id, SHARED_RESOURCES, OWNED_RESOURCES
        )

        service.state = "failed"
        service.version += 1
        lsm_project.compile(service_id=service.id, validation=False)
        lsm_project.post_partial_compile_validation(
            service.id, SHARED_RESOURCES, OWNED_RESOURCES
        )

        service.state = "up"
        service.version += 1
        lsm_project.compile(service_id=service.id, validation=False)
        lsm_project.post_partial_compile_validation(
            service.id, SHARED_RESOURCES, OWNED_RESOURCES
        )

    # Update all the services
    for service in services:
        attributes = copy.deepcopy(service.active_attributes)
        attributes["items"] = [
            # Take all the previous items except for the last one
            *attributes["items"][:-1],
            # Add one new item
            {"name": "new-item"},
        ]
        lsm_project.update_service(
            service_id=service.id,
            attributes=attributes,
            auto_transfer=True,
        )

        assert service.state == "update_inprogress"
        lsm_project.compile(service_id=service.id, validation=False)
        lsm_project.post_partial_compile_validation(
            service.id, SHARED_RESOURCES, OWNED_RESOURCES
        )

        service.state = "update_failed"
        service.version += 1
        lsm_project.compile(service_id=service.id, validation=False)
        lsm_project.post_partial_compile_validation(
            service.id, SHARED_RESOURCES, OWNED_RESOURCES
        )

        service.state = "up"
        service.version += 1
        lsm_project.compile(service_id=service.id, validation=False)
        lsm_project.post_partial_compile_validation(
            service.id, SHARED_RESOURCES, OWNED_RESOURCES
        )

    # Delete all the services
    for service in services:
        service.state = "deleting"
        service.version += 1
        lsm_project.compile(service_id=service.id, validation=False)
        lsm_project.post_partial_compile_validation(
            service.id, SHARED_RESOURCES, OWNED_RESOURCES
        )

        service.state = "terminated"
        service.deleted = True
        lsm_project.compile(service_id=service.id, validation=False)
        lsm_project.post_partial_compile_validation(
            service.id, SHARED_RESOURCES, OWNED_RESOURCES
        )
