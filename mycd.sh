#!/bin/bash

cd $1
echo $1
if [[ $1 == "" ]]
then
echo "you are in the home directory"
else
echo "now u are in $1"
fi
