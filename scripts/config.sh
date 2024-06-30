#!/bin/bash
directory=~/conky-yasno
config_directory=$directory/tmp/config

rm -r -f "$config_directory"
mkdir -p "$config_directory"

private_url=$(jq -r '.private_url' $directory/config.json)
echo -n $private_url > $config_directory/private_url

ping_url=$(jq -r '.ping_url' $directory/config.json)
echo -n $ping_url > $config_directory/ping_url
