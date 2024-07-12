#!/bin/bash

shopt -s extglob

read -p 'enter name: ' name

case $name in
+([a-z]))
echo "upper characters" 
;;
+([A-Z]))
echo "small characters" 
;;
+([0-9]))
echo "numbers" 
;;
+([a-zA-Z]))
echo "mixed characters" 
;;
+([a-zA-Z0-9]))
echo "mixed characters and numbers" 
;;
"")
echo "Nothing"
;;
esac