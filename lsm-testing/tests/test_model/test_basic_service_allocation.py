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
        "import integration_example::services::basic::lsm"
    )

    assert lsm_project.service_entities is not None

    # We should have exported only our service
    assert lsm_project.service_entities.keys() == {"BasicService"}

    # Create a few services, and run their initial validation
    for i in range(5):
        lsm_project.create_service(
            service_entity_name="BasicService",
            attributes={"name": f"test-{i}"},
            auto_transfer=True,
        )

    # Assert that all services have a different service_id
    all_unique_ids = {
        service.active_attributes["unique_id"]
        for service in lsm_project.services.values()
    }
    assert len(all_unique_ids) == len(lsm_project.services)

    # Make a full compile to validate all our services can work together
    lsm_project.compile()
