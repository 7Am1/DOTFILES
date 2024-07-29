#!/bin/sh

read -r cpu a b c previdle rest < /proc/stat
prevtotal=$((a+b+c+previdle))
sleep 0.5
read -r cpu a b c idle rest < /proc/stat
total=$((a+b+c+idle))
cpu=$((100*( (total-prevtotal) - (idle-previdle) ) / (total-prevtotal) ))

if [ "$cpu" -ge 65 ]; then
    echo "^c#8853c7^$cpu% "
elif [ "$cpu" -ge 40 ]; then
    echo "^c#6d64d8^$cpu% "
elif [ "$cpu" -ge 0 ]; then
    echo "^c#2f88ff^$cpu% "	
fi

    
	