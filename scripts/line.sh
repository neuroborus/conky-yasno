#!/bin/bash
directory=~/conky-yasno
tmp=$directory/tmp
vars=$tmp/vars

start_height=165
end_height=805
height=$(($end_height - $start_height))

# Define the directory path
logs_path=$tmp/logs
# Create the directory if it doesn't exist
mkdir -p "$logs_path"
logs_path="$logs_path/line.log"

# multiplied by 1000
hour=$(($(date +%H)*100))
minute=$(($(date +%M)*100))

# echo "$hour" > "$logs_path"
# echo "$minute" >> "$logs_path"


time=$(($hour + ($minute / 60)))
# echo "$time" >> "$logs_path"

# Depending on the current hour, determine the position
# Let's say we have 24 hours and the width of the imaqge is 620 pixels
# The line position will be calculated as hour * (width / 24)

# divided by 100
position=$(($time * $height / 2400 + $start_height))
# echo "$position" >> "$logs_path"


result="0,${position}"
echo -n $result > $vars/line_position

echo $result
