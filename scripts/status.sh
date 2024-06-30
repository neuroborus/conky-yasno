#!/bin/bash
directory=~/conky-yasno
config=$directory/tmp/config
vars=$directory/tmp/vars

mkdir -p "$vars"

HOST=$(cat $config/ping_url)

if ping -c 1 "$HOST" &> /dev/null; then
    echo -n "true" > $vars/status
else
    echo -n "false" > $vars/status
fi
