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
printf "$IC_PLUG 100%%"
# MODIFY ON PHYSICAL DEVICE
