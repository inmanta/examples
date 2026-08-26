import asyncio
import functools
import logging
import subprocess
import sys
import time

from inmanta.config import Config
from inmanta.protocol.endpoints import Client
from inmanta_tests.utils import retry_limited
from packaging.version import Version

logging.basicConfig(level=logging.DEBUG)

HOST = ("172.30.0.100", "57400")

INTERFACE_PATH = "srl_nokia-interfaces:interface"
NS_INSTANCE_PATH = "srl_nokia-network-instance:network-instance"
OSPF_PATH = "srl_nokia-ospf:ospf"


async def main():
    try:
        await do_deploy_and_validate_config()
    finally:
        fetch_logs()


async def do_deploy_and_validate_config():

    # Create client

    Config.set("client_rest_transport", "host", "172.30.0.3")
    Config.set("client_rest_transport", "port", "8888")
    client = Client(name="client")

    async def is_inmanta_server_up() -> bool:
        status = await client.get_server_status()
        if status.code == 200:
            orchestator_version = Version(status.result["data"]["version"])
            print(f"Orchestrator version: {orchestator_version}.")
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

    async def install_project() -> None:
        cmd = [
            sys.executable,
            "-m",
            "inmanta.app",
            "-vvv",
            "project",
            "install",
            "--host",
            "172.30.0.3",
        ]
        subprocess.check_call(cmd)

    async def is_version_picked_up_by_scheduler(version: int) -> bool:
        """
        Return True iff the scheduler picked up the given desired state version.
        A desired state version has the status active when it's the latest version
        processed by the scheduler.
        """
        result = await client.list_desired_state_versions(
            tid=environment_id, filter={"version": [f"ge:{version}", f"le:{version}"]}
        )
        assert result.code == 200
        desired_state_versions = result.result["data"]
        if not desired_state_versions:
            raise Exception(f"Desired state version {version} doesn't exist.")
        version_status = desired_state_versions[0]["status"]
        return version_status == "active"

    async def done_deploying() -> bool:
        """
        Return True iff all resources in the latest released model version are
        in the deployed status.
        """
        result = await client.resource_list(tid=environment_id)
        assert result.code == 200
        return all(
            res["status"] == "deployed" for res in result.result["data"]
        )

    async def deploy_and_check(file: str, version: int) -> None:
        """
        Export a given .cf file and check that the deployed
        resources are as expected.

        :param version: The desired state version created by exporting the given file.
        """
        print(f"Checking successful deploy of {file}")
        cmd = [
            sys.executable,
            "-m",
            "inmanta.app",
            "-vvv",
            "export",
            "-f",
            file,
            "--host",
            "172.30.0.3",
            "-e",
            environment_id,
        ]
        subprocess.check_call(cmd)

        # Wait until the scheduler picked up the new desired state version.
        # Prevents race condition where done_deploying considers the previous
        # model version.
        await retry_limited(
            functools.partial(is_version_picked_up_by_scheduler, version),
            timeout=20,
            interval=1,
        )
        await retry_limited(done_deploying, timeout=20, interval=1)

    await install_project()

    await deploy_and_check("main.cf", version=1)
    await deploy_and_check("interfaces.cf", version=2)
    await deploy_and_check("ospf.cf", version=3)

    validate_config()


def fetch_config(gc):
    result = gc.get(path=["interface", "network-instance"], encoding="json_ietf")

    notifications = result["notification"]

    interface_result = None
    ospf_result = None
    for response in notifications:
        if list(response["update"][0]["val"].keys())[0] == INTERFACE_PATH:
            interface_result = response["update"][0]["val"][INTERFACE_PATH][0]
        if list(response["update"][0]["val"].keys())[0] == NS_INSTANCE_PATH:
            ospf_result = response["update"][0]["val"][NS_INSTANCE_PATH][0]

    return interface_result, ospf_result


def validate_config() -> None:
    # Only available after inmanta project install
    from pygnmi.client import gNMIclient

    with gNMIclient(
        target=HOST,
        username="admin",
        password="NokiaSrl1!",
        insecure=False,
        skip_verify=True,
    ) as gc:
        interface_result, ospf_result = fetch_config(gc)

        assert interface_result is not None
        assert ospf_result is not None

        router_id = ospf_result["protocols"][OSPF_PATH]["instance"][0]["router-id"]
        assert router_id == "10.20.30.100"

        sub_int_ip_address = interface_result["subinterface"][0]["ipv4"]["address"][0][
            "ip-prefix"
        ]
        assert sub_int_ip_address == "10.10.11.1/30"

        # Check if we see the two neighbours
        neigbours = ["10.20.30.210", "10.20.30.220"]
        count = 0
        while neigbours and count < 60:
            for interface in ospf_result["protocols"][OSPF_PATH]["instance"][0]["area"][
                0
            ]["interface"]:
                if "neighbor" not in interface or len(interface["neighbor"]) == 0:
                    count += 1
                    break

                if interface["neighbor"][0]["router-id"] in neigbours:
                    neigbours.remove(interface["neighbor"][0]["router-id"])

            if not neigbours:
                break

            interface_result, ospf_result = fetch_config(gc)
            time.sleep(1)

    print("[+] Deployment was successful!")


def fetch_logs():
    subprocess.check_call(
        "sudo docker logs clab-srlinux-inmanta-server >server.log", shell=True
    )
    subprocess.check_call(
        "sudo docker logs clab-srlinux-postgres >postgres.log", shell=True
    )
    subprocess.check_call(
        "sudo docker exec -i clab-srlinux-inmanta-server sh -c cat /var/log/inmanta/resource-*.log >resource-actions.log",
        shell=True,
    )
    subprocess.check_call(
        "sudo docker exec -i clab-srlinux-inmanta-server sh -c cat /var/log/inmanta/agent-*.log >agents.log",
        shell=True,
    )


asyncio.run(main())
