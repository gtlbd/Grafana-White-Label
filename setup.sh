#!/bin/bash
sudo mkdir -p /home/ramim/Grafana-White-Label/Original_Files/public
sudo cp -ru /usr/share/grafana/public/* /home/$USER/Grafana-White-Label/Original_Files/public/
sudo scp /home/$USER/Grafana-White-Label/grafana/public/img/grafana_icon.svg /usr/share/grafana/public/img/
echo -e "Done - grafana_icon.svg"
sudo scp /home/$USER/Grafana-White-Label/grafana/public/img/fav32.svg /usr/share/grafana/public/img/
echo -e "Done - fav32.svg"