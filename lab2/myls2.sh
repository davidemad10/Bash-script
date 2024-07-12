#!/bin/bash

if [[ $1 == "" ]]
then
echo "the list of current directory:"
ls -l
else
echo "the list of dir $1 is:"
ls -l $1
fi
########################################
if [[ $1 == "" ]]
then
echo "the list of current directory:"
ls -a
else
echo "the list of dir $1 is:"
ls -a $1
fi

########################################
if [[ -f $1 ]]
then
echo "$1 is a file"
elif [[ $1 == "" ]]
then
echo "$1 is a dir"
echo "the list of current directory:"
ls -d
else
echo "$1 is not a dir"
echo "the list of dir $1 is:"
ls -d $1
fi

####################################
if [[ -f $1 ]]
then
echo "$1 is a file"
elif [[ $1 == "" ]]
then
echo "$1 is a dir"
echo "the list of current directory:"
ls -i
else
echo "$1 is not a dir"
echo "the list of dir $1 is:"
ls -i $1
fi

##################################
if [[ -f $1 ]]
then
echo "$1 is a file"
elif [[ $1 == "" ]]
then
echo "$1 is a dir"
echo "the list of current directory:"
ls -R
else
echo "$1 is not a dir"
echo "the list of dir $1 is:"
ls -R $1
fi