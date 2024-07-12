#!/bin/bash

home="$HOME"
backupdir="$HOME/backup"

mkdir -p "$backupdir"

for item in "$home"/*; do
  if [ -f "$item" ]; then
    cp "$item" "$backupdir"
  fi
done

echo "Backup of files in $home has been created in $backupdir."
