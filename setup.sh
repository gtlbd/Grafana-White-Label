#!/bin/bash
# sudo mkdir -p /home/$USER/Grafana-White-Label/Original_Files/public
# echo -e "Starting Backup - from: '/usr/share/grafana/public/', to: '/home/$USER/Grafana-White-Label/Original_Files/public/'"
# sudo cp -ru /usr/share/grafana/public/* /home/$USER/Grafana-White-Label/Original_Files/public/
# echo -e "Done - Backup"
echo -e "service grafana-server stop"
sudo service grafana-server stop
chmod +x create_and_backup.sh
echo -e "create_and_backup.sh"
bash create_and_backup.sh
sudo scp /home/$USER/Grafana-White-Label/grafana/public/img/grafana_icon.svg /usr/share/grafana/public/img/
echo -e "Done - grafana_icon.svg"
sudo scp /home/$USER/Grafana-White-Label/grafana/public/img/fav32.png /usr/share/grafana/public/img/
echo -e "Done - fav32.png"
sudo scp /home/$USER/Grafana-White-Label/grafana/public/img/g8_login_dark.svg /usr/share/grafana/public/img/
echo -e "Done - g8_login_dark.svg"
sudo scp /home/$USER/Grafana-White-Label/grafana/public/img/mstile-150x150.png /usr/share/grafana/public/img/
echo -e "Done - mstile-150x150.png"
sudo scp /home/$USER/Grafana-White-Label/grafana/public/img/apple-touch-icon.png /usr/share/grafana/public/img/
echo -e "Done - apple-touch-icon.png"
sudo scp /home/$USER/Grafana-White-Label/grafana/public/img/g8_login_light.svg /usr/share/grafana/public/img/
echo -e "Done - g8_login_light.svg"
sudo scp /home/$USER/Grafana-White-Label/grafana/public/img/grafana_mask_icon.svg /usr/share/grafana/public/img/
echo -e "Done - grafana_mask_icon.svg"
cd /home/$USER/Grafana-White-Label/
ls
chmod +x replace_text.sh
echo -e "chmod +x replace_text.sh"
sudo bash replace_text.sh
git checkout -- replace_text.sh
git checkout -- create_and_backup.sh
sudo service grafana-server start
sudo service grafana-server status


