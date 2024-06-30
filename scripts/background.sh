#!/bin/bash
directory=~/conky-yasno
tmp=$directory/tmp
config=$directory/tmp/config

get_pdf=$(curl -o $tmp/yasno.pdf -f "$(cat $config/private_url)")
chmod=$(chmod 644 $tmp/yasno.pdf)
rm_png=$(rm -f $tmp/yasno.png)
create_png=$(pdftoppm -singlefile -png $tmp/yasno.pdf $tmp/yasno)

# Define the directory path
logs_path=$tmp/logs
# Create the directory if it doesn't exist
mkdir -p "$logs_path"
logs_path="$logs_path/background.log"

# Write content to log file
echo "*** Get pdf" > "$logs_path"
echo "$get_pdf" >> "$logs_path"
echo "*** chmod" >> "$logs_path"
echo "$chmod" >> "$logs_path"
echo "*** Remove png" >> "$logs_path"
echo "$rm_png" >> "$logs_path"
echo "*** Create png" >> "$logs_path"
echo "$create_png" >> "$logs_path"