#!/bin/bash
#sudo mkdir -p /home/ramim/Grafana-White-Label/Original_Files/public
echo -e "Starting Backup - from: '/usr/share/grafana/public/', to: '/home/$USER/Grafana-White-Label/Original_Files/public/'"
#sudo cp -ru /usr/share/grafana/public/* /home/$USER/Grafana-White-Label/Original_Files/public/
echo -e "Done - Backup"
sudo scp /home/$USER/Grafana-White-Label/grafana/public/img/grafana_icon.svg /usr/share/grafana/public/img/
echo -e "Done - grafana_icon.svg"
sudo scp /home/$USER/Grafana-White-Label/grafana/public/img/fav32.png /usr/share/grafana/public/img/
echo -e "Done - fav32.png"
sudo scp /home/$USER/Grafana-White-Label/grafana/public/img/g8_login_dark.svg /usr/share/grafana/public/img/
echo -e "Done - g8_login_dark.svg"
cd /home/$USER/Grafana-White-Label/
ls
chmod +x replace_text.sh
echo -e "chmod +x replace_text.sh"
sudo bash replace_text.sh
#git reset --hard HEAD@{1}
git checkout -- replace_text.sh
sudo service grafana-server force-reload
sudo service grafana-server status


