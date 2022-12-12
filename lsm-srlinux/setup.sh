#!/bin/sh
environment=$(egrep '[0-9a-f]{8}-([0-9a-f]{4}-){3}[0-9a-f]{8}' -o .inmanta)
dir=/var/lib/inmanta/server/environments/$environment

mkdir $dir
cp -r /code/* $dir