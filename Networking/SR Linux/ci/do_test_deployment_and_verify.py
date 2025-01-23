import asyncio
import subprocess
from packaging.version import Version

from inmanta.protocol.endpoints import Client
from inmanta.protocol import methods_v2
from inmanta.config import Config
from inmanta_tests.utils import retry_limited


import argparse

async def main():
    # Create client

    parser = argparse.ArgumentParser()
    parser.add_argument('--workdir')
    args = parser.parse_args()

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

    print(f"Version is {version}.")
    print("Creating project env-test")
    result = await client.create_project("env-test")
    assert result.code == 200
    project_id = result.result["project"]["id"]

    print("Creating environment dev in project env-test")
    result = await client.create_environment(project_id=project_id, name="dev")
    assert result.code == 200
    environment_id = result.result["environment"]["id"]

    # Add project directory to environment directory on server
    subprocess.check_call(f"sudo docker exec clab-srlinux-inmanta-server ls -la", shell=True)
    print("ls -la success")
    subprocess.check_call(f"sudo docker exec -w /code clab-srlinux-inmanta-server ls -la", shell=True)
    print("ls -la success -w /code success")
    subprocess.check_call(f"sudo docker exec -w /code clab-srlinux-inmanta-server /code/setup.sh {environment_id}", shell=True)
    print("setup.sh script success")

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

    async def check_successful_deploy(file: str, n_resources: int):
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

        async def done_deploying() -> bool:
            result = await client.resource_list(tid=environment_id, deploy_summary=True)
            assert result.code == 200
            assert len(result.result["data"]) == n_resources
            print(result.result["data"])
            print(result.result["metadata"])
            return result.result["metadata"]["deploy_summary"]["by_state"]["deployed"] == n_resources

        await retry_limited(done_deploying, timeout=20, interval=1)


    await check_successful_deploy("main.cf", 0)
    await check_successful_deploy("interfaces.cf", 6)
    await check_successful_deploy("ospf.cf", 6)



asyncio.run(main())
