import asyncio
import subprocess
from packaging.version import Version

from inmanta.protocol.endpoints import Client
from inmanta.protocol import methods_v2
from inmanta.config import Config
from inmanta_tests.utils import retry_limited



async def main():
    # Create client
    Config.set("client_rest_transport", "host", "172.30.0.3")
    Config.set("client_rest_transport", "port", "8888")
    client = Client(name="client")

    version: Version | None = None
    async def is_inmanta_server_up() -> bool:
        nonlocal version
        status = await client.get_server_status()
        if status.code == 200:
            version = Version(status.result["data"]["version"])
            return True
        return False


    print("Waiting until the Inmanta server has finished starting...")
    await retry_limited(is_inmanta_server_up, timeout=60, interval=1)

    print("Creating project env-test")
    result = await client.create_project("env-test")
    assert result.code == 200
    project_id = result.result["project"]["id"]

    print("Creating environment dev in project env-test")
    result = await client.create_environment(project_id=project_id, name="dev")
    assert result.code == 200
    environment_id = result.result["environment"]["id"]

    # Add project directory to environment directory on server
    subprocess.check_call(f"sudo docker exec -w /code clab-srlinux-inmanta-server /code/setup.sh {environment_id}", shell=True)


    args = [
        "python",
        "-m",
        "inmanta.app",
        "-vvv",
        "export",
        "-f",
        "main.cf",
    ]
    process = await asyncio.subprocess.create_subprocess_exec(
        *args, stdout=subprocess.PIPE, stderr=subprocess.PIPE, cwd=str(project_dir)
    )
    try:
        (stdout, stderr) = await asyncio.wait_for(process.communicate(), timeout=30)
    except asyncio.TimeoutError as e:
        process.kill()
        (stdout, stderr) = await process.communicate()
        print(stdout.decode())
        print(stderr.decode())
        raise e

    # assert process.returncode == 0, f"{stdout}\n\n{stderr}"
    #
    # # Export service definition
    # print("Exporting service definition")
    # result = await client.lsm_export_service_definition(tid=environment_id)
    # assert result.code == 200, result.result
    #
    # # Wait until service type is added to the catalog
    # async def is_service_definition_available() -> bool:
    #     result = await client.lsm_service_catalog_list(tid=environment_id)
    #     assert result.code == 200
    #     return len(result.result["data"]) > 0
    #
    # print("Waiting until the service definition is available in the catalog...")
    # await retry_limited(is_service_definition_available, timeout=600, interval=1)
    #
    # # Create service instance
    # print("Creating service instance")
    # service_entity_name = "interface-ip-assignment"
    # result = await client.lsm_services_create(
    #     tid=environment_id,
    #     service_entity=service_entity_name,
    #     attributes={
    #         "router_ip": "172.30.0.100",
    #         "router_name": "spline",
    #         "interface_name": "ethernet-1/1",
    #         "address": "10.0.0.4/16"
    #     },
    # )
    # assert result.code == 200
    # service_instance_id = result.result["data"]["id"]
    #
    # # Wait until the service instance goes into the up state
    # async def is_service_instance_up() -> bool:
    #     result = await client.lsm_services_get(
    #         tid=environment_id,
    #         service_entity=service_entity_name,
    #         service_id=service_instance_id,
    #     )
    #     assert result.code == 200
    #     return result.result["data"]["state"] == "up"
    #
    # print("Waiting until the service instance goes into the up state...")
    # await retry_limited(is_service_instance_up, timeout=600, interval=1)


asyncio.run(main())
