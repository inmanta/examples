"""
:copyright: 2024 Inmanta
:contact: code@inmanta.com
:license: Inmanta EULA
"""

import pytest
import pytest_inmanta.plugin
import yaml

import inmanta_plugins.integration_example.config


@pytest.fixture()
def project(project: pytest_inmanta.plugin.Project) -> pytest_inmanta.plugin.Project:
    """
    Overwrite the default project fixture with our own, to add the default configuration
    to our project.
    """
    default_config = inmanta_plugins.integration_example.config.Config()
    default_config.path().parent.mkdir(parents=True, exist_ok=True)
    default_config.path().write_text(yaml.dump(default_config.model_dump()))
    return project
