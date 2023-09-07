#!/bin/bash

# Define the source and replacement text
source_Welcome_text="Welcome to Grafana"
replacement_Welcome_text="Welcome to Enerzyz"
source_Loading_text="Loading Grafana"
replacement_Loading_text="Loading Enerzyz"
source_AppTitle_text='AppTitle="Grafana"'
replacement_AppTitle_text='AppTitle="Enerzyz"'
source_AppTitle2_text="<title>[[.AppTitle]]</title>"
replacement_AppTitle2_text="<title>Enerzyz</title>"

# Specify the parent directory where the subdirectory containing files is located
#parent_directory="/usr/share/grafana/public/build/"
# Iterate through all files in the directory
directory="/usr/share/grafana/public/build/"
for file in "$directory"*
do
    if [ -f "$file" ]; then
        # Use sed to replace the text and save it back to the file
        sed -i "s/$source_Welcome_text/$replacement_Welcome_text/g" "$file"
		sed -i "s/$source_AppTitle_text/$replacement_AppTitle_text/g" "$file"
        echo "Replaced in $file"
    fi
done
echo "Text replacement completed. for - Welcome"
directory="/usr/share/grafana/public/views/"
for file in "$directory"*
do
    if [ -f "$file" ]; then
        # Use sed to replace the text and save it back to the file
        sed -i "s/$source_Loading_text/$replacement_Loading_text/g" "$file"
		sed -i "s/$source_AppTitle2_text/$replacement_AppTitle2_text/g" "$file"
        echo "Replaced in $file"
    fi
done
echo "Text replacement completed. for - Loading"
# Find and replace text recursively in all files under the parent directory
# find "$parent_directory" -type f -exec sh -c '
    # for file; do
        # sed -i "s/$0/$1/g" "$file"
        # echo "Replaced in $file"
    # done
# ' "$source_Welcome_text" "$replacement_Welcome_text" {} +
# find "$parent_directory" -type f -exec sh -c '
    # for file; do
        # sed -i "s/$0/$1/g" "$file"
        # echo "Replaced in $file"
    # done
# ' "$source_Loading_text" "$replacement_Loading_text" {} +

#echo "Text replacement completed. for - Loading"
