#!/bin/bash

echo "How many numbers do you want to enter?"
read n

declare -a numbers

sum=0

for (( i=0; i<$n; i++ ))
do
    echo "Enter number $((i+1)):"
    read number
    numbers[i]=$number
    sum=$((sum + number))
done

average=$(echo "$sum / $n" | bc -l)

echo "The average is: $average"