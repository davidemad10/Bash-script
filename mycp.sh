#!/bin/bash

if [ "$#" -lt 2 ]
then
    echo "Usage:"
    echo "  mycp source_file target_file"
    echo "  mycp source_file1 source_file2 ... target_directory"
    exit 1
fi

target="${@: -1}"

if [ -d "$target" ]
 then
    for source in "${@:1:$#-1}"; do
        if [ -f "$source" ]; then
            cp "$source" "$target"
        else
            echo "mycp: cannot stat '$source': No such file"
        fi
    done
else

    if [ "$#" -eq 2 ] 
    then
        cp "$1" "$2"
    else
        echo "Usage:"
        echo "  mycp source_file target_file"
        echo "  mycp source_file1 source_file2 ... target_directory"
        exit 1
    fi
fi

