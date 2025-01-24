import argparse
import asyncio
import functools
import subprocess

from inmanta.config import Config
from inmanta.protocol.endpoints import Client
from inmanta_tests.utils import retry_limited
from packaging.version import Version


async def main():

    # Create client
    parser = argparse.ArgumentParser()
    parser.add_argument("--workdir")
    args = parser.parse_args()

    Config.set("client_rest_transport", "host", "172.30.0.3")
    Config.set("client_rest_transport", "port", "8888")
    client = Client(name="client")

    orchestator_version: Version | None = None

    async def is_inmanta_server_up() -> bool:
        nonlocal orchestator_version
        status = await client.get_server_status()
        if status.code == 200:
            orchestator_version = Version(status.result["data"]["version"])
            return True
        return False

    print("Waiting until the Inmanta server has finished starting...")
    await retry_limited(is_inmanta_server_up, timeout=60, interval=1)

    print(f"Orchestrator version:{orchestator_version}.")

    print("Creating project env-test")
    result = await client.create_project("env-test")
    assert result.code == 200
    project_id = result.result["project"]["id"]

    print("Creating environment dev in project env-test")
    result = await client.create_environment(project_id=project_id, name="dev")
    assert result.code == 200
    environment_id = result.result["environment"]["id"]

    # Add project directory to environment directory on server
    subprocess.check_call(
        f"sudo docker exec -w /code clab-srlinux-inmanta-server /code/setup.sh {environment_id}",
        shell=True,
    )

    async def install_project() -> None:
        cmd = [
            "python",
            "-m",
            "inmanta.app",
            "-vvv",
            "project",
            "install",
            "--host",
            "172.30.0.3",
        ]
        process = await asyncio.subprocess.create_subprocess_exec(
            *cmd, stdout=subprocess.PIPE, stderr=subprocess.PIPE, cwd=str(args.workdir)
        )
        try:
            (stdout, stderr) = await asyncio.wait_for(process.communicate(), timeout=30)
        except asyncio.TimeoutError as e:
            process.kill()
            (stdout, stderr) = await process.communicate()
            raise e
        finally:
            print(stdout.decode())
            print(stderr.decode())

    async def check_successful_deploy(file: str, expected_resources: set[str]):
        print(f"Checking sucessful deploy of {file}")
        cmd = [
            "python",
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
        process = await asyncio.subprocess.create_subprocess_exec(
            *cmd, stdout=subprocess.PIPE, stderr=subprocess.PIPE, cwd=str(args.workdir)
        )
        try:
            (stdout, stderr) = await asyncio.wait_for(process.communicate(), timeout=30)
        except asyncio.TimeoutError as e:
            process.kill()
            (stdout, stderr) = await process.communicate()
            raise e
        finally:
            print(stdout.decode())
            print(stderr.decode())

        async def done_deploying(expected_resources: set[str]) -> bool:
            result = await client.resource_list(tid=environment_id, deploy_summary=True)
            assert result.code == 200
            assert {
                res["resource_version_id"] for res in result.result["data"]
            } == expected_resources

            return result.result["metadata"]["deploy_summary"]["by_state"][
                "deployed"
            ] == len(expected_resources)

        await retry_limited(
            functools.partial(done_deploying, expected_resources),
            timeout=20,
            interval=1,
        )

    def make_expected_rids(version: int) -> set[str]:
        return set(
            [
                f"yang::GnmiResource[spine,name=global],v={version}",
                f"yang::GnmiResource[leaf2,name=global],v={version}",
                f"yang::GnmiResource[leaf1,name=global],v={version}",
                f"std::AgentConfig[internal,agentname=spine],v={version}",
                f"std::AgentConfig[internal,agentname=leaf2],v={version}",
                f"std::AgentConfig[internal,agentname=leaf1],v={version}",
            ]
        )

    await install_project()

    await check_successful_deploy("main.cf", set())
    await check_successful_deploy("interfaces.cf", make_expected_rids(version=2))
    await check_successful_deploy("ospf.cf", make_expected_rids(version=3))


asyncio.run(main())
