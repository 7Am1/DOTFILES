#!/bin/sh

	read -r cpu a b c previdle rest < /proc/stat
	prevtotal=$((a+b+c+previdle))
	sleep 0.5
	read -r cpu a b c idle rest < /proc/stat
	total=$((a+b+c+idle))
	cpu=$((100*( (total-prevtotal) - (idle-previdle) ) / (total-prevtotal) ))


if [ $cpu > 40 ]; then
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

    
	echo " $cpu%  "