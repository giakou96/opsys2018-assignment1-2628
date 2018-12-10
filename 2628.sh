#!/bin/bash
SITESFILE=test.txt #txt with a list of url to monitor
while read site; do
	webpage=$1
	interval=2
	get_command='curl -s'
	contents=$( $get_command $webpage)

	subject="$webpage changed"

	while true; do
		new_contents=$( $get_command $webpage )
		if [ "$contents" != "$new_contents" ]
		then
			echo "$URL INIT"
		if
			["$contents" = "$new_contents"]  then
			echo "URL"
		else
			echo "$URL FAILED"
		fi
		sleep $interval

done < "$SITEFILE"
