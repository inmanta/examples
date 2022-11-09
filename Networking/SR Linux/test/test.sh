#!/bin/bash

# Test case based on https://docs.inmanta.com/community/latest/quickstart.html
# Run through the instructions quickly and does basic sanity check

set -e
set -x

base=$(pwd)


mkdir -p "$base/.virtualenvs"
python3.9 -m venv "$base/.virtualenvs/srlinux"
source "$base/.virtualenvs/srlinux/bin/activate"


pip install inmanta

git clone https://github.com/inmanta/examples.git "$base/examples"

cd "$base/.."
inmanta project install

cd "$base/../containerlab"
sudo clab deploy -t topology.yml

until $(curl --output /dev/null --silent --head --fail http://172.30.0.3:8888/console/); do
    printf '.'
    sleep 1
done

cd  "$base/.."
inmanta-cli --host 172.30.0.3 project create -n test
inmanta-cli --host 172.30.0.3 environment create -p test -n SR_Linux --save

inmanta -vvv export -f interfaces.cf


while inmanta-cli  --host 172.30.0.3  version list -e SR_Linux | grep deploying; do sleep 1; done

inmanta-cli  --host 172.30.0.3  version list -e SR_Linux | grep success

cd "$base/../containerlab"
sudo clab destroy -t topology.yml
