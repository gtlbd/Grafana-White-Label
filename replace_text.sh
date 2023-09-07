#!/bin/bash

# Define the source and replacement text
source_Welcome_text="Welcome to Grafana"
replacement_Welcome_text="Welcome to Enerzyz"
source_Loading_text="Loading Grafana"
replacement_Loading_text="Loading Enerzyz"

# Specify the parent directory where the subdirectory containing files is located
parent_directory="/usr/share/grafana/public/"

# Iterate through all files in the subdirectory
for subdirectory in "$parent_directory"*
do
    if [ -d "$subdirectory" ]; then
        for file in "$subdirectory"*
        do
            if [ -f "$file" ]; then
                # Use sed to replace the text and save it back to the file
                sed -i "s/$source_Welcome_text/$replacement_Welcome_text/g" "$file"
                sed -i "s/$source_Loading_text/$replacement_Loading_text/g" "$file"
                echo "Replaced in $file"
            fi
        done
    fi
done
