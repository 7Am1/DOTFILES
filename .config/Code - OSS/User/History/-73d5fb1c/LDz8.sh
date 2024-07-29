#!/bin/sh

dMonth="$(date  | awk '{print $2}')"
dDay="$(date  | awk '{print $3}')"
dName="$(date  | awk '{print $1}')"
dTime="$(date +'%H:%M')"
#echo "[status2d] ^c#FF0000^$date^c#55cdfc^^r3,3,14,14^^f20^^c#FFFFFF^^b#f7a8b8^ and white text on pink background "
echo -e "^c#8c00ff^$dName ^c#8c00ff^$dMonth $dDay"
#echo -e "^c#8c00ff^date+'%d/%m/%Y'"