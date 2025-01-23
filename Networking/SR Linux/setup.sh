#!/bin/sh

if [ -z "${1}" ]; then
   echo "Usage: $0 <environment_id>" >&2
   exit 1
fi

layout_version=$(<'/var/lib/inmanta/.inmanta_disk_layout_version')
if [ "$layout_version" = "2" ];
then
    dir="/var/lib/inmanta/server/${1}/compiler/"
else
    dir="/var/lib/inmanta/server/environments/${1}"
fi

mkdir -p $dir

cp -r /code/*.cf $dir
cp  /code/project.yml $dir
cp  /code/requirements.txt $dir

chown -R inmanta $dir
