#!/bin/sh

dCode="$(date +'%d/%m/%Y')"
dName="$(date  | awk '{print $1}')"
dTime="$(date +'%H:%M' )"
#echo "[status2d] ^c#FF0000^$date^c#55cdfc^^r3,3,14,14^^f20^^c#FFFFFF^^b#f7a8b8^ and white text on pink background "
#echo -e "^c#8c00ff^$dName ^c#8c00ff^$dCode ^c#000000^^b#8c00ff^ $dTime "
echo -e "^c#8c00ff^$dCode $dName"