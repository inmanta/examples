"""
:copyright: 2024 Inmanta
:contact: code@inmanta.com
:license: Inmanta EULA
"""

import pytest_inmanta_lsm.lsm_project


def test_service_validation(
    lsm_project: pytest_inmanta_lsm.lsm_project.LsmProject,
) -> None:
    # Make sure that our service definition is valid, trigger an export
    # into our mocked catalog
    lsm_project.export_service_entities(
        """
        import integration_example::services::important_customer
        import integration_example::services::important_customer::lsm
        """
    )

    assert lsm_project.service_entities is not None

    # We should have exported only our service
    assert lsm_project.service_entities.keys() == {"ImportantCustomerService"}

    # Create a few services, and run their initial validation
    for i in range(5):
        lsm_project.create_service(
            service_entity_name="ImportantCustomerService",
            attributes={
                "orderId": f"test-{i}",
                "documentation": {
                    "customerReference": "some customer",
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

    # Assert that all services have a different serviceId
    all_service_ids = {
        service.active_attributes["serviceId"]
        for service in lsm_project.services.values()
    }
    assert len(all_service_ids) == len(lsm_project.services)

    # Assert that all items have a different serviceItemId
    all_service_item_ids = {
        item["serviceItemId"]
        for service in lsm_project.services.values()
        for item in service.active_attributes["items"]
    }
    all_service_items = {
        (service.active_attributes["orderId"], item["name"])
        for service in lsm_project.services.values()
        for item in service.active_attributes["items"]
    }
    assert len(all_service_item_ids) == len(all_service_items)

    # Make a full compile to validate all our services can work together
    lsm_project.compile()
