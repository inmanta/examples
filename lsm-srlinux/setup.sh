#!/bin/sh

if [ -z "${1}" ]; then
   echo "Usage: $0 <environment_id>" >&2
   exit 1
fi

dir="/var/lib/inmanta/server/environments/${1}"

mkdir $dir
cp -r /code/* $dir

sudo chown -R inmanta $dir
