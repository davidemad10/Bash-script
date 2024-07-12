#!/bin/bash

PS3="Please select an option: "
options=("ls" "ls -a" "exit")

select opt in "${options[@]}"
do
    case $opt in
        "ls")
            ls
            ;;
        "ls -a")
            ls -a
            ;;
        "exit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done