#!/bin/bash

# Source and destination directories
source_dir="/usr/share/grafana/public/"
destination_dir="/home/$USER/Grafana-White-Label/Original_Files/public/"

# Create the backup directory if it doesn't exist
mkdir -p "$destination_dir"

echo -e "Starting Backup - from: '$source_dir', to: '$destination_dir'"

# Use rsync to create a backup of files and directories recursively
sudo rsync -av --info=progress2 --ignore-existing "$source_dir" "$destination_dir"

echo -e "Backup completed"
