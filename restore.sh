#!/bin/bash
echo -e "Restoring Backup - from: '/home/$USER/Grafana-White-Label/Original_Files/public/', to:  '/usr/share/grafana/public/'"

sudo cp -r /home/$USER/Grafana-White-Label/Original_Files/public/* /usr/share/grafana/public/ 
