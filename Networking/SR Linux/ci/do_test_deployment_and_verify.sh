#!/bin/bash
# wait for inmanta dashboard to be up
until $(curl --output /dev/null --silent --head --fail http://172.30.0.3:8888/console/); do
    printf '.'
    sleep 1
done

set -e

# create a project and environment, then export
sudo docker exec -i "clab-srlinux-inmanta-server" sh -c "sudo chown inmanta:inmanta /home/inmanta/quickstart-project/"
sudo docker exec -i "clab-srlinux-inmanta-server" sh -c '
cd /home/inmanta/quickstart-project/
python3 -m venv venv && source venv/bin/activate && pip install inmanta-core

inmanta-cli project create -n test && inmanta-cli environment create -n quickstart-env -p test --save && \
inmanta-cli environment setting set -e quickstart-env -k autostart_agent_deploy_splay_time -o 1

set +e
# Check whether the `inmanta project install` command exists.
# When it exists, the compiler will not install modules itself.

inmanta project install --help &> /dev/null
exit_code=$?
set -e

if [ ${exit_code} -eq 0 ]; then
    inmanta project install
fi
'

# Export the project to server
sudo docker exec -i "clab-srlinux-inmanta-server" sh -c "cd /home/inmanta/quickstart-project/; source venv/bin/activate && inmanta -vvv  export -d"

# wait for the deployment to be done
sudo docker exec -i "clab-srlinux-inmanta-server" sh -c "cd /home/inmanta/quickstart-project/; while inmanta-cli version list -e quickstart-env | grep deploying; do sleep 1; done"

# Catch the logs
sudo docker logs clab-srlinux-inmanta-server >server.log
sudo docker logs clab-srlinux-postgres >postgres.log
sudo docker exec -i "clab-srlinux-inmanta-server" sh -c "cat /var/log/inmanta/resource-*.log" >resource-actions.log
sudo docker exec -i "clab-srlinux-inmanta-server" sh -c "cat /var/log/inmanta/agent-*.log" >agents.log

# check if deployment was successful
../venv/bin/python3 ci/validate_config.py
