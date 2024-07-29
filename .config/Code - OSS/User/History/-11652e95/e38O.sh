#!/bin/sh

conntype=$(ip route | awk '/default/ { print substr($5,1,1) }')

if [ -z "$conntype" ]; then
    echo "^c#7b3e59^"
elif [ "$conntype" = "e" ]; then
    #echo "^c#2f88ff^󰈀"
    echo "^c#7b3e59^"
elif [ "$conntype" = "w" ]; then
    echo ""^c#8853c7^""
fi