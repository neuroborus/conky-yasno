#!/bin/bash
directory=~/conky-yasno
resources=$directory/resources
tmp=$directory/tmp
config=$tmp/config
vars=$tmp/vars

is_ping=$(cat $config/ping)

if [ "$is_ping" == "true" ]; then
    mkdir -p "$vars"

    HOST=$(cat $config/ping_url)

    if ping -c 1 "$HOST" &> /dev/null; then
        echo -n "on" > $vars/status
        cp $resources/green-line.png $tmp/line.png
    else
        echo -n "off" > $vars/status
        cp $resources/red-line.png $tmp/line.png
    fi

else
    echo -n "disabled" > $vars/status
fi