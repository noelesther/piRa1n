#!/bin/bash
read -r -p "Do you really want to remove piRa1n? [Y/n] " input
case $input in
    [yY][eE][sS]|[yY])
    echo 'Removing piRa1n...'
    sudo systemctl stop piRa1n.service
    sudo systemctl disable piRa1n.service
    sudo rm -rf /home/pi/piRa1n/ /lib/systemd/system/piRa1n.service
    sudo systemctl daemon-reload
    echo 'piRa1n has been removed.' ;;
    [nN][oO]|[nN])
 echo "piRa1n won't be removed."
       ;;
    *)
 echo "Invalid input..."
 exit 1
 ;;
esac
