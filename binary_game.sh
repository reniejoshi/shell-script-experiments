#!/bin/bash

score=0
time=25
running=true

echo "Convert from decimal to binary before time runs out!"
sleep 1
echo "You have $time seconds to answer each question"
sleep 1
echo "Enter 'q' to quit"
sleep 1
echo "Good luck!"
sleep 1
echo

while [[ $running == true ]]; do
    decimal=$(( RANDOM % 100 + 1 ))

    number=$decimal
    binary=""
    while (( number > 0 )); do
        binary="$((number % 2))$binary"
        (( number /= 2 ))
    done

    echo "Score: $score"
    echo "Decimal: $decimal"
    echo -n "Binary: "
    if ! read -t $time user_binary; then
        echo
        echo
        echo "Time's up!"
        running=false
        break
    fi

    if [[ "$user_binary" == 'q' ]]; then
        running=false
        break
    fi

    if [[ "$user_binary" == "$binary" ]]; then
        (( score += 1 ))
        echo "Correct!"
    else
        (( score -= 1 ))
        echo "Incorrect!"
    fi

    sleep 1
    echo
done
