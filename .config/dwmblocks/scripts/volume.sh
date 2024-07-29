#!/bin/bash

muted=$(pactl list sinks | awk '/Mute:/ { print $2 }')
vol=$(pactl list sinks | grep Volume: | awk 'FNR == 1 { print $5 }' | cut -f1 -d '%')

if [ "$muted" = "yes" ]; then
	echo "^c#7b3e59^"
else
	if [ "$vol" -ge 65 ]; then
		echo "^c#dcefff^"
	elif [ "$vol" -ge 40 ]; then
		echo "^c#dcefff^"
	elif [ "$vol" -ge 0 ]; then
		echo "^c#dcefff^"	
	fi
fi