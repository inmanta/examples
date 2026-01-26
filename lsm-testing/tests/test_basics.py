"""
:copyright: 2024 Inmanta
:contact: code@inmanta.com
:license: Inmanta EULA
"""

import pytest_inmanta.plugin


def test_basics(project: pytest_inmanta.plugin.Project) -> None:
    """
    This test only checks if the module compiles correctly.

    It is the most basic test possible, it doesn't test a lot, but it is fast.

    Here we don't import the lsm submodules of our service because:
    1. We are using the simple project fixture, it wouldn't work as lsm::all
        needs an orchestrator (or a mocked orchestrator) to read all the
        service instances from.
    2. We are making sure that this module can be used by another module,
        where we might not want to export the lsm services of this module, but
        only reuse their logic.
    """
    project.compile("""
        import integration_example
        import integration_example::services::basic
        import integration_example::services::important_customer
        """)
