#!/bin/bash

if [[ $1 == "" ]]
then
echo "the list of current directory:"
ls 
else
echo "the list of dir $1 is:"
ls $1
fi
