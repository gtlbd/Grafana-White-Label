#!/bin/bash
sudo service grafana-server stop
cd /home/$USER/Grafana-White-Label/
ls
chmod +x restore.sh
echo -e "chmod +x restore.sh"
sudo bash restore.sh
git checkout -- replace_text.sh
sudo service grafana-server start
sudo service grafana-server status