"""
    Copyright 2021 Inmanta

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.

    Contact: code@inmanta.com
"""

import logging
import time
from typing import Optional

from inmanta.protocol.endpoints import SyncClient

LOGGER = logging.getLogger(__name__)


def get_last_version_data(sync_client: SyncClient, tid: str) -> Optional[dict]:
    result = sync_client.list_versions(tid=tid, start=0, limit=1)
    assert (
        result.code == 200
    ), f"Failed to fetch last version deployed, expected code 200 but got {result.code} instead: {result}"

    versions = result.result["versions"]
    if not versions:
        return None
    return versions[0]


def recompile_environment(sync_client: SyncClient, tid: str) -> dict:
    # Triggering compile
    result = sync_client.notify_change(
        id=tid,
        update=False,
        metadata={
            "message": "Compile triggered by tests",
            "type": "recompile",
        },
    )
    assert (
        result.code == 200
    ), f"Failed to launch compile, expected code 200 but got {result.code} instead: {result}"

    # Getting latest version
    version_data = get_last_version_data(sync_client, tid)
    version = version_data["version"] if version_data is not None else 0
    last_version = 0  # This is only used for logging purpose

    while True:
        if version != last_version:
            LOGGER.info(f"Waiting for version {version} to be deployed")
            last_version = version
        if version_data is not None and version_data["deployed"]:
            result = sync_client.is_compiling(id=tid)
            if result.code == 200:
                # There is a compile in progress
                LOGGER.info("There is a compile in progress, waiting for it to be done")
            else:
                # No compile in progress, checking if there is one in the queue
                result = sync_client.get_compile_queue(tid=tid)
                assert (
                    result.code == 200
                ), f"Failed to fetch the compile queue, expected code 200 but got {result.code} instead: {result}"

                if len(result.result["queue"]) == 0:
                    # No queue, deploy is done
                    LOGGER.info(f"Repair of version {version} is completed")

                    return version_data

        time.sleep(2)
        version_data = get_last_version_data(sync_client, tid)
        version = version_data["version"] if version_data is not None else 0
