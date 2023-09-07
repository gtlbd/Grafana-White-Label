#!/bin/bash
sudo mkdir -p /home/ramim/Grafana-White-Label/Original_Files/public
echo -e "Starting Backup - from: '/usr/share/grafana/public/', to: '/home/$USER/Grafana-White-Label/Original_Files/public/'"
sudo cp -ru /usr/share/grafana/public/* /home/$USER/Grafana-White-Label/Original_Files/public/
echo -e "Done - Backup"
sudo scp /home/$USER/Grafana-White-Label/grafana/public/img/grafana_icon.svg /usr/share/grafana/public/img/
echo -e "Done - grafana_icon.svg"
sudo scp /home/$USER/Grafana-White-Label/grafana/public/img/fav32.png /usr/share/grafana/public/img/
echo -e "Done - fav32.png"
sudo scp /home/$USER/Grafana-White-Label/grafana/public/img/g8_login_dark.svg /usr/share/grafana/public/img/
echo -e "Done - g8_login_dark.svg"

# Define the source and replacement texts on login page
source_text="Welcome to Grafana"
replacement_text="Welcome to Enerzyz"

# Define the file path
file_path="/usr/share/grafana/public/build/2077.a35416a524fb1433fe6e.js"

# Use sed to perform the replacement
sed -i "s/$source_text/$replacement_text/g" "$file_path"

# Check if the replacement was successful
if [ $? -eq 0 ]; then
    echo "login page - Replacement completed successfully."
else
    echo "login page - Replacement failed."
fi
