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

    async def deploy_and_check(file: str, expected_resources: set[str]):
        """
        Export a given .cf file and check that the deployed
        resources are as expected.
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

        async def done_deploying(expected_resources: set[str]) -> bool:
            if not expected_resources:
                return True
            result = await client.resource_list(tid=environment_id, deploy_summary=True)
            assert result.code == 200
            if result.result["metadata"]["deploy_summary"]["by_state"][
                "deployed"
            ] != len(expected_resources):
                return False

            return {
                res["resource_version_id"] for res in result.result["data"]
            } == expected_resources

        await retry_limited(
            functools.partial(done_deploying, expected_resources),
            timeout=20,
            interval=1,
        )

    def make_expected_rids(version: int) -> set[str]:
        return {
            f"yang::GnmiResource[spine,name=global],v={version}",
            f"yang::GnmiResource[leaf2,name=global],v={version}",
            f"yang::GnmiResource[leaf1,name=global],v={version}",
            f"std::AgentConfig[internal,agentname=spine],v={version}",
            f"std::AgentConfig[internal,agentname=leaf2],v={version}",
            f"std::AgentConfig[internal,agentname=leaf1],v={version}",
        }

    await install_project()

    await deploy_and_check("main.cf", set())
    await deploy_and_check("interfaces.cf", make_expected_rids(version=2))
    await deploy_and_check("ospf.cf", make_expected_rids(version=3))

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
