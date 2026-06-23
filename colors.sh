#!/bin/bash

color() {
    case "$1" in
        red) code=31 ;;
        green) code=32 ;;
        yellow) code=33 ;;
        blue) code=34 ;;
        *) code=0 ;;
    esac
    shift
    echo -e "\e[${code}m$*\e[0m"
}