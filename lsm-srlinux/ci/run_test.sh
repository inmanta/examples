#!/bin/bash

# wait for inmanta dashboard to be up
echo "Waiting until the Inmanta server has finished starting"
until $(curl --output /dev/null --silent --head --fail http://172.30.0.3:8888/console/); do
    printf '.'
    sleep 1
done

set -ex

base=$(pwd)


python3 -m venv "$base/venv"
source "$base/venv/bin/activate"

pip install -U pip
if [ -n "$1" ]; then
  pip install --pre inmanta-service-orchestrator=="$1" pytest-inmanta-extensions=="$1"
else
  pip install inmanta-service-orchestrator pytest-inmanta-extensions
fi

# Create a project called test
inmanta-cli --host 172.30.0.3 project create -n test
# Create an environment called lsm-srlinux
inmanta-cli --host 172.30.0.3 environment create -p test -n lsm-srlinux --save

# Add project directory to environment directory on server
sudo docker exec -w /code clab-srlinux-inmanta-server  /code/setup.sh

export INMANTA_HOST="172.30.0.3"
export INMANTA_PORT="8888"
export INMANTA_ENVIRONMENT_ID=$(egrep '[0-9a-f]{8}-([0-9a-f]{4}-){3}[0-9a-f]{12}' -o .inmanta)
python $(dirname "$0")/do_test_deployment_and_verify.py

