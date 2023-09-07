#!/bin/bash

# Define the source and replacement text
source_Welcome_text="Welcome to Grafana"
replacement_Welcome_text="Welcome to Enerzyz"
source_Loading_text="Loading Grafana"
replacement_Loading_text="Loading Enerzyz"

# Specify the parent directory where the subdirectory containing files is located
parent_directory="/usr/share/grafana/public/"

# Find and replace text recursively in all files under the parent directory
find "$parent_directory" -type f -exec sh -c '
    for file; do
        sed -i "s/$0/$1/g" "$file"
        echo "Replaced in $file"
    done
' "$source_Welcome_text" "$replacement_Welcome_text" {} +
find "$parent_directory" -type f -exec sh -c '
    for file; do
        sed -i "s/$0/$1/g" "$file"
        echo "Replaced in $file"
    done
' "$source_Loading_text" "$replacement_Loading_text" {} +

echo "Text replacement completed."
