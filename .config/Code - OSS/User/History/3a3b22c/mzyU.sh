#!/bin/sh

read -r cpu a b c previdle rest < /proc/stat
prevtotal=$((a+b+c+previdle))
sleep 0.5
read -r cpu a b c idle rest < /proc/stat
total=$((a+b+c+idle))
cpu=$((100*( (total-prevtotal) - (idle-previdle) ) / (total-prevtotal) ))

if [ "$cpu" -ge 65 ]; then
    echo "^c#416680^$cpu% "
elif [ "$cpu" -ge 40 ]; then
    echo "^c#6dabd6^$cpu% "
elif [ "$cpu" -ge 0 ]; then
    echo "^c#adc4e3^$cpu% "	
fi

    
	