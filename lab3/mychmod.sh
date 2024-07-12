#!/bin/bash

home="$HOME"

for files in "$home"/*; do
  chmod +x "$files"
done

echo "All files have been take execute permissions in $home."
