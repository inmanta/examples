#!/bin/bash
# wait for inmanta dashboard to be up
until $(curl --output /dev/null --silent --head --fail http://172.30.0.3:8888/console/); do
    printf '.'
    sleep 1
done

set -ex

base=$(pwd)


python3.9 -m venv "$base/venv"
source "$base/venv/bin/activate"

pip install inmanta
inmanta project install

inmanta-cli --host 172.30.0.3 project create -n test
inmanta-cli --host 172.30.0.3 environment create -p test -n SR_Linux --save
inmanta -vvv export -f interfaces.cf


while inmanta-cli  --host 172.30.0.3  version list -e SR_Linux | grep deploying; do sleep 1; done
inmanta-cli  --host 172.30.0.3  version list -e SR_Linux | grep success

# check if deployment was successful
venv/bin/python3 ci/validate_config.py