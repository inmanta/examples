#!/bin/sh

if [ -z "${1}" ]; then
   echo "Usage: $0 <environment_id>" >&2
   exit 1
fi

dir="/var/lib/inmanta/server/${1}/compiler/"

mkdir -p $dir
cp -r /code/* $dir

chown -R inmanta $dir
