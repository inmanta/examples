"""
:copyright: 2024 Inmanta
:contact: code@inmanta.com
:license: Inmanta EULA
"""

from pytest_inmanta.plugin import Project


def test_basics(project: Project) -> None:
    project.compile(
        """
        import integration_example
        import integration_example::services::basic
        import integration_example::services::important_customer
        """
    )
