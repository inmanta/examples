import os
import asyncio

from inmanta.protocol.endpoints import Client
from inmanta.config import Config
from inmanta_tests.utils import retry_limited

# Load API endpoint definitions
from inmanta_lsm import methods


async def main():
    # Process input parameters
    server_host = os.environ.get("INMANTA_HOST")
    if not server_host:
        raise Exception("Environment variable INMANTA_HOST not set.")
    server_port = os.environ.get("INMANTA_PORT")
    if not server_port:
        raise Exception("Environment variable INMANTA_PORT not set.")
    environment_id = os.environ["INMANTA_ENVIRONMENT_ID"]
    if not environment_id:
        raise Exception("Environment variable INMANTA_ENVIRONMENT_ID not set.")

    # Create client
    Config.set("client_rest_transport", "host", server_host)
    Config.set("client_rest_transport", "port", server_port)
    client = Client(name="client")

    service_entity_name = "interface-ip-assignment"

    # Export service definition
    print("Exporting service definition")
    result = await client.lsm_export_service_definition(tid=environment_id)
    assert result.code == 200

    # Wait until service type is added to the catalog
    async def is_service_definition_available() -> bool:
        result = await client.lsm_service_catalog_list(tid=environment_id)
        assert result.code == 200
        return len(result.result["data"]) > 0

    print("Waiting until service definition is available in catalog...")
    await retry_limited(is_service_definition_available, timeout=600, interval=1)

    # Create service instance
    print("Creating service instance")
    result = await client.lsm_services_create(
        tid=environment_id,
        service_entity=service_entity_name,
        attributes={
            "router_ip": "172.30.0.100",
            "router_name": "spline",
            "interface_name": "ethernet-1/1",
            "address": "10.0.0.4/16"
        },
    )
    assert result.code == 200
    service_instance_id = result.result["data"]["id"]

    # Wait until the service instance goes into the up state
    async def is_service_instance_up() -> bool:
        result = await client.lsm_services_get(
            tid=environment_id,
            service_entity=service_entity_name,
            service_id=service_instance_id,
        )
        assert result.code == 200
        return result.result["data"]["state"] == "up"

    print("Waiting until service instance goes into the up state...")
    await retry_limited(is_service_instance_up, timeout=600, interval=1)


asyncio.get_event_loop().run_until_complete(main())
