#!/bin/bash

# Define the source and replacement text
source_Welcome_text="Welcome to Grafana"
replacement_Welcome_text="Welcome to Enerzyz"
# source_Welcome_text="Grafana"
# replacement_Welcome_text="Enerzyz"
source_Loading_text="Loading Grafana"
replacement_Loading_text="Loading Enerzyz"
source_AppTitle_text='AppTitle="Grafana"'
replacement_AppTitle_text='AppTitle="Enerzyz"'
source_AppTitle2_text="<title>\[\[.AppTitle\]\]</title>"
replacement_AppTitle2_text="<title>Enerzyz</title>"
source_FavIcon_text="\[\[.FavIcon\]\]"
replacement_FavIcon_text="public/img/fav32.png"

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
		sed -i 's|\[{target:"_blank",id:"documentation".*grafana_footer"}\]|\[\]|g' "$file"
		sed -i 's|({target:"_blank",id:"license",.*licenseUrl})|()|g' "$file"
		sed -i 's|({target:"_blank",id:"version",.*CHANGELOG.md":void 0})|()|g' "$file"
		sed -i 's|({target:"_blank",id:"updateVersion",.*grafana_footer"})|()|g' "$file"
		sed -i 's|..createElement(....,{className:.,onClick:.,iconOnly:!0,icon:"rss","aria-label":"News"})|null|g' "$file"
		sed -i 's|,he&&a.createElement(sl.L,{overlay:()=>a.createElement(Vc,{node:he}),placement:"bottom-end"},a.createElement(ao.h,{iconOnly:!0,icon:"question-circle","aria-label":"Help"}))| |g' "$file"
		
		
		sed -i 's|Extend the Grafana experience|Extend the Enerzyz experience|g' "$file"
		sed -i 's|Manage users in Grafana|Manage users in Enerzyz|g' "$file"
		sed -i 's|against the Grafana API.|against the Enerzyz API.|g' "$file"
		
		sed -i 's|View the settings defined in your Grafana config|View the settings defined in your Enerzyz config|g' "$file"
		sed -i 's|These system settings are defined in grafana.ini|These system settings are defined in enerzyz.ini|g' "$file"
		sed -i 's|need to restart Grafana.|need to restart Enerzyz.|g' "$file"
		sed -i 's|Isolated instances of Grafana|Isolated instances of Enerzyz|g' "$file"
		sed -i 's|Stats and license| |g' "$file"
		sed -i 's|/admin/upgrading| |g' "$file"
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
        sed -i -E "s|$source_AppTitle2_text|$replacement_AppTitle2_text|g" "$file"
		sed -i -E "s|$source_FavIcon_text|$replacement_FavIcon_text|g" "$file"
        echo "Replaced in $file"
    fi
done
echo "Text replacement completed. for - Loading"
