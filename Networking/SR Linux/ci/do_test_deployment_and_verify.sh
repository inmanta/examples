#!/bin/bash
# wait for inmanta dashboard to be up
until $(curl --output /dev/null --silent --head --fail http://172.30.0.3:8888/console/); do
    printf '.'
    sleep 1
done

set -ex

base=$(pwd)


python"$1" -m venv "$base/venv"
source "$base/venv/bin/activate"

if [ -n "$2" ]; then
  pip install inmanta"$2"
else
  pip install inmanta
fi

inmanta -vvvv project install

inmanta-cli --host 172.30.0.3 project create -n test
inmanta-cli --host 172.30.0.3 environment create -p test -n SR_Linux --save

function export_and_assert_successful_deploy() {
   local cf_file=$1
   local exported_version=$2
   inmanta -vvv export -f ${cf_file}

   # Wait until deployment finishes
   inmanta-cli  --host 172.30.0.3  version list -e SR_Linux

   # Verify outcome of deployment
#   list_version_output=$(inmanta-cli --host 172.30.0.3 version list -e SR_Linux)
#   if [ -z "$(echo "${list_version_output}" |grep '^|' |cut -d '|' -f 3,8 |grep "${exported_version}" |grep -i active)" ]; then
#      echo "${cf_file} was not deployed successfully"
#      echo ""
#      echo "${list_version_output}"
#      exit 1
#   fi
   monitor_output=$(inmanta-cli --host 172.30.0.3 monitor -e SR_Linux)

   version_report=$(inmanta-cli --host 172.30.0.3 report -e SR_Linux -i "${exported_version}")
   echo "${version_report}"

   version_report=$(inmanta-cli --host 172.30.0.3 report -e SR_Linux -i "${exported_version}" -l)
   echo "${version_report}"


   sleep 10


}

# test main
inmanta -vvv export -f main.cf

# test interfaces
export_and_assert_successful_deploy "interfaces.cf" 2

# test ospf
export_and_assert_successful_deploy "ospf.cf" 3

# fetch logs
sudo docker logs clab-srlinux-inmanta-server >server.log
sudo docker logs clab-srlinux-postgres >postgres.log
sudo docker exec -i "clab-srlinux-inmanta-server" sh -c "cat /var/log/inmanta/resource-*.log" >resource-actions.log
sudo docker exec -i "clab-srlinux-inmanta-server" sh -c "cat /var/log/inmanta/agent-*.log" >agents.log

# check if deployment was successful
venv/bin/python3 ci/validate_config.py
