#!/bin/sh

conntype=$(ip route | awk '/default/ { print substr($5,1,1) }')

if [ -z "$conntype" ]; then
    echo " down"
elif [ "$conntype" = "e" ]; then
    echo " up"
elif [ "$conntype" = "w" ]; then
    echo " up"
fi