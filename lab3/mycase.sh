#!/bin/bash

echo "Enter a character:"
read -n 1 char

if [ -z "$char" ]; then
  echo "Nothing entered."
  exit 0
fi

case $char in
  [A-Z])
    echo "" ;echo "Upper Case."
    ;;
  [a-z])
    echo "" ;echo "Lower Case."
    ;;
  [0-9])
    echo "" ;echo "Number."
    ;;

esac
