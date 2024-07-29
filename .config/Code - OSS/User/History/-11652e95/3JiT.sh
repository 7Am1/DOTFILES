#!/bin/sh

conntype=$(ip route | awk '/default/ { print substr($5,1,1) }')

if [ -z "$conntype" ]; then
    echo "^c#dcefff^󰟦"
elif [ "$conntype" = "e" ]; then
    echo "^c#dcefff^󰟦"
elif [ "$conntype" = "w" ]; then
    echo ""^c#8853c7^""
fi