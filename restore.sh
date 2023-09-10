#!/bin/bash
echo -e "Restoring Backup - from: '/home/$USER/Grafana-White-Label/Original_Files/public/', to:  '/usr/share/grafana/public/'"
# sudo cp -r /home/$USER/Grafana-White-Label/Original_Files/public/* /usr/share/grafana/public/ 
# Source and destination directories
source_dir="/home/$USER/Grafana-White-Label/Original_Files/public/"
destination_dir="/usr/share/grafana/public/"

# Copy files from source to destination
sudo cp -r "$source_dir"* "$destination_dir" &

# Get the process ID of the copy operation
cp_pid=$!

while ps -p $cp_pid > /dev/null; do
    # Calculate the percentage of copied files
    copied_files=$(find "$destination_dir" -type f | wc -l)
    total_files=$(find "$source_dir" -type f | wc -l)
    percentage=$((copied_files * 100 / total_files))
    
    # Print the progress
    echo "Progress: $percentage%"

    # Sleep for a while before checking again
    sleep 1
done

echo "Restore Default operation completed..!"