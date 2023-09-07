#!/bin/bash

# Define the source and replacement texts
source_text="Welcome to Grafana"
replacement_text="Welcome to Enerzyz"

# Define the file path
file_path="/usr/share/grafana/public/build/2077.a35416a524fb1433fe6e.js"

# Use sed to perform the replacement
sed -i "s/$source_text/$replacement_text/g" "$file_path"

# Check if the replacement was successful
if [ $? -eq 0 ]; then
    echo "Replacement completed successfully."
else
    echo "Replacement failed."
fi
