#!/bin/bash
directory=~/conky-yasno
tmp=$directory/tmp
resources=$directory/resources
config_directory=$tmp/config

rm -r -f "$config_directory"
mkdir -p "$config_directory"

cp $resources/orange-line.png $tmp/line.png

private_url=$(jq -r '.private_url' $directory/config.json)
echo -n $private_url > $config_directory/private_url

ping=$(jq -r '.ping' $directory/config.json)
echo -n $ping > $config_directory/ping

ping_url=$(jq -r '.ping_url' $directory/config.json)
echo -n $ping_url > $config_directory/ping_url
