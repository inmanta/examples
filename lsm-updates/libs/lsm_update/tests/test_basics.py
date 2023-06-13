"""
    :copyright: 2023 Inmanta
    :contact: code@inmanta.com
    :license: Inmanta EULA
"""
from pytest_inmanta.plugin import Project


def test_basics(project: Project) -> None:
    project.compile(
        """
            import lsm_update
        """
    )

    assert project.get_stdout() == "hello world\n"
