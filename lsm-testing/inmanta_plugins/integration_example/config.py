"""
:copyright: 2024 Inmanta
:contact: code@inmanta.com
:license: Inmanta EULA
"""

import pathlib
import typing

import inmanta_plugins.config.const
import pydantic
import yaml

import inmanta.module
import inmanta.plugins


@inmanta.plugins.plugin()
def get_config() -> "dict":
    """
    Get the dict configuration for this module.
    """
    return Config.get().model_dump()


class IdRangeConfig(pydantic.BaseModel):
    """
    Configuration for a range of ids.
    """

    start: int = 0
    end: int = 1000


class ImportantCustomerServiceConfig(pydantic.BaseModel):
    """
    Configuration related to the ImportantCustomerService service.
    """

    service_id_range: IdRangeConfig = pydantic.Field(default_factory=IdRangeConfig)
    service_item_id_range: IdRangeConfig = pydantic.Field(default_factory=IdRangeConfig)
    orders_folder: inmanta_plugins.config.const.SystemPath = "file:///tmp/orders"
    items_folder: inmanta_plugins.config.const.SystemPath = "file:///tmp/items"


class BasicServiceConfig(pydantic.BaseModel):
    """
    Configuration related to the BasicService service.
    """

    unique_id_range: IdRangeConfig = pydantic.Field(default_factory=IdRangeConfig)


class Config(pydantic.BaseModel):
    basic_service: typing.Optional[BasicServiceConfig] = pydantic.Field(
        default_factory=BasicServiceConfig
    )
    important_customer_service: typing.Optional[ImportantCustomerServiceConfig] = (
        pydantic.Field(default_factory=ImportantCustomerServiceConfig)
    )

    @classmethod
    def get(cls) -> "Config":
        """
        Build and return an instance of the Configuration
        """
        with open(cls.path()) as fd:
            # Validating the config with pydantic
            try:
                return Config(**yaml.safe_load(fd))
            except pydantic.ValidationError as e:
                raise inmanta.plugins.PluginException(
                    f"The integration_example config provided at path {cls.path()} is not a valid config:\n{str(e)}"
                )

    @classmethod
    def path(cls) -> pathlib.Path:
        """
        The configuration file should be located in the files of the project using
        this module and named `integration-example-config.yaml`.
        """
        return pathlib.Path(
            inmanta.module.Project.get().project_path,
            "files/integration-example-config.yaml",
        )
