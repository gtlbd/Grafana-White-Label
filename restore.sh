#!/bin/bash
echo -e "Restoring Backup - from: '/home/$USER/Grafana-White-Label/Original_Files/public/', to:  '/usr/share/grafana/public/'"
# sudo cp -r /home/$USER/Grafana-White-Label/Original_Files/public/* /usr/share/grafana/public/ 
# Source and destination directories
source_dir="/home/$USER/Grafana-White-Label/Original_Files/public/"
destination_dir="/usr/share/grafana/public/"

# Function to display copy progress
function copy_with_progress {
    # Copy files from source to destination with progress using rsync
    sudo rsync -a --info=progress2 "$1" "$2"
}

# Check if source directory exists
if [ -d "$source_dir" ]; then
    echo "Restoring Backup - from: '$source_dir', to: '$destination_dir'"
    
    # Call the function to copy files with progress
    copy_with_progress "$source_dir" "$destination_dir"
    
    echo "Restore Default operation completed..!"
else
    echo "Source directory '$source_dir' does not exist."
fi