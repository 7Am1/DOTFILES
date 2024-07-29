#!/bin/bash

colors() {
    [ "$1" -lt "15" ] && printf "#7b3e59" && exit
    printf "#3f6cad"
}

colorsC() {
    printf "#c8cc86"
}

icona() {
    [ "$1" -lt "15" ] && printf "" && exit
    [ "$1" -lt "35" ] && printf "" && exit
    [ "$1" -lt "60" ] && printf "" && exit
    [ "$1" -lt "80" ] && printf "" && exit
    printf ""
}

iconaC() {
    [ "$1" -lt "15" ] && printf "" && exit
    [ "$1" -lt "35" ] && printf "" && exit
    [ "$1" -lt "60" ] && printf "" && exit
    [ "$1" -lt "80" ] && printf "" && exit
    printf ""
}

IC_PLUG="^c#dcefff^"

acpi > /tmp/acpi_info
while read line; do
    percent="$(echo "$line" | awk -F ', ' '{print $2}' | sed 's/.$//')"

    if echo "$line" | grep "Discharging," > /dev/null; then
        # DESCARREGANT
        echo -e  "^c$(colors "$percent")^"
        echo -e  "$(icona "$percent") "
        echo -e  "$percent%%"

        time_left="$(echo "$line" | awk '{print $5}' | sed "s/:[0-9][0-9]$//g")"
        echo -e  " ($time_left)"

    elif echo "$line" | grep "Full" > /dev/null; then
        # COMPLETAMENT CARREGADA
        echo -e  "$IC_PLUG 100%%"

    elif ! echo "$line" | grep "Unknown" > /dev/null; then
        # CARREGANT
        echo -e  "^c$(colorsC "$percent")^"
        echo -e  "$(iconaC "$percent") "
        echo -e  "$percent%%"

    fi
done < /tmp/acpi_info4