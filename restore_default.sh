#!/bin/bash
echo -e "service grafana-server stop"
sudo service grafana-server stop
cd /home/$USER/Grafana-White-Label/
ls
chmod +x restore.sh
echo -e "chmod +x restore.sh"
bash restore.sh
git checkout -- restore.sh
sudo service grafana-server start
sudo service grafana-server status