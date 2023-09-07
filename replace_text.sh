#!/bin/bash

# Define the source and replacement text
source_Welcome_text="Welcome to Grafana"
replacement_Welcome_text="Welcome to Enerzyz"
source_Loading_text="Loading Grafana"
replacement_Loading_text="Loading Enerzyz"


# Specify the directory where the files are located
directory="/usr/share/grafana/public/build/"

# Iterate through all files in the directory
for file in "$directory"*
do
    if [ -f "$file" ]; then
        # Use sed to replace the text and save it back to the file
        sed -i "s/$source_Welcome_text/$replacement_Welcome_text/g" "$file"
		sed -i "s/$source_Loading_text/$replacement_Loading_text/g" "$file"
        echo "Replaced in $file"
    fi
done
