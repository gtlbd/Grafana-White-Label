#!/bin/bash

# Define the source and replacement text
source_text="Welcome to Grafana"
replacement_text="Welcome to Enerzyz"

# Specify the directory where the files are located
directory="/usr/share/grafana/public/build/"

# Iterate through all files in the directory
for file in "$directory"*
do
    if [ -f "$file" ]; then
        # Use sed to replace the text and save it back to the file
        sed -i "s/$source_text/$replacement_text/g" "$file"
        echo "Replaced in $file"
    fi
done
