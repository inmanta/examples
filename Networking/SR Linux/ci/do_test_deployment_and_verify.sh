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

# test main
inmanta -vvv export -f main.cf

# test interfaces
inmanta -vvv export -f interfaces.cf

while inmanta-cli  --host 172.30.0.3  version list -e SR_Linux | grep deploying; do sleep 1; done

if [ -z "$(inmanta-cli --host 172.30.0.3 version list -e SR_Linux |grep '^|' |cut -d '|' -f 3,8 |grep '2' |grep -i success)" ]; then
   echo "interfaces.cf was not deployed successfully"
   exit 1
fi

# test ospf
inmanta -vvv export -f ospf.cf

while inmanta-cli  --host 172.30.0.3  version list -e SR_Linux | grep deploying; do sleep 1; done

if [ -z "$(inmanta-cli --host 172.30.0.3 version list -e SR_Linux |grep '^|' |cut -d '|' -f 3,8 |grep '3' |grep -i success)" ]; then
   echo "ospf.cf was not deployed successfully"
   exit 1
fi

# fetch logs
sudo docker logs clab-srlinux-inmanta-server >server.log
sudo docker logs clab-srlinux-postgres >postgres.log
sudo docker exec -i "clab-srlinux-inmanta-server" sh -c "cat /var/log/inmanta/resource-*.log" >resource-actions.log
sudo docker exec -i "clab-srlinux-inmanta-server" sh -c "cat /var/log/inmanta/agent-*.log" >agents.log

# check if deployment was successful
venv/bin/python3 ci/validate_config.py
