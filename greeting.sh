#!/bin/bash

hour=$(TZ="America/Los_Angeles" date +%H)

if (( hour < 12 )); then
    echo "Good morning!"
elif (( hour > 18 )); then
    echo "Good evening!"
else
    echo "Good afternoon!"
fi