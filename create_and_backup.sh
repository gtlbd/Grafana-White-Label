#!/bin/bash

# Source and destination directories
source_dir="/usr/share/grafana/public/"
destination_dir="/home/$USER/Grafana-White-Label/Original_Files/public/"

# Function to copy files from source to destination if they don't exist in the destination
function copy_if_not_exist {
    source_file="$1"
    destination_file="$2"
    
    # Check if the destination file exists
    if [ ! -e "$destination_file" ]; then
        echo "Copying '$source_file' to '$destination_file'"
        sudo cp "$source_file" "$destination_file"
    fi
}

# Check if the destination directory exists, create it if not
if [ ! -d "$destination_dir" ]; then
    echo "Creating destination directory: '$destination_dir'"
    sudo mkdir -p "$destination_dir"
fi

echo "Starting Backup - from: '$source_dir', to: '$destination_dir'"

# Iterate over files in the source directory and copy if they don't exist in the destination
for file in "$source_dir"*
do
    if [ -f "$file" ]; then
        file_name=$(basename "$file")
        destination_file="$destination_dir$file_name"
        
        copy_if_not_exist "$file" "$destination_file"
    fi
done

echo "Backup completed"
