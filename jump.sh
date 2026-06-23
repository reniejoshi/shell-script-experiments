#!/bin/bash

function jump() {
    oldifs=$IFS
    IFS=/
    path_array=($PWD)
    IFS=$oldifs

    pos=-1
    for directory in "${path_array[@]}"
    do
        ((pos++))
        if [ $1 = "$directory" ]; then
            path_directories_length=${#path_array[@]}

            cwd=$PWD
            limit=$((path_directories_length - pos - 1))
            for (( i = 0; i< limit; i++ ));
            do
                cwd=$cwd/..
            done
            cd $cwd
            break
        fi
    done
}