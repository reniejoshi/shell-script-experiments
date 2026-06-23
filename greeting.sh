#!/bin/bash

hour=$(TZ="America/Los_Angeles" date +%H)

if (( hour < 12 )); then
    period="morning"
elif (( hour >= 18 )); then
    period="evening"
else
    period="afternoon"
fi

echo "$(hostname) says: \"Good $period, $(whoami)!\""
