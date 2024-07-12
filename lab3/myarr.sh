#!/bin/bash
read -p "Enter num of element: " count
declare -a array

for((i = 1; i<=$count; i++));
do
    read -p "Enter element $((i)): " element
    array[$i]=$element
done
for((i = 1; i<=$count; i++));
do  echo "${array[$i]}"
done