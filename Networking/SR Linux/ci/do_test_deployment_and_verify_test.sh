#!/bin/bash
# wait for inmanta dashboard to be up


python_version=$(docker inspect clab-srlinux-inmanta-server  | grep PYTHON_VERSION |  cut -d"=" -f2- | cut -d'"' -f1)
echo python_version:${python_version}
./do_test_deployment_and_verify_test_test.sh ${python_version}
