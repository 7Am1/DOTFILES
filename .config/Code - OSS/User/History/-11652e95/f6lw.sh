#!/bin/sh

conntype=$(ip route | awk '/default/ { print substr($5,1,1) }')

if [ -z "$conntype" ]; then
    echo " down"
elif [ "$conntype" = "e" ]; then
    echo "^c#2f88ff^󰈀"
elif [ "$conntype" = "w" ]; then
    echo ""^c#8853c7^""
fi