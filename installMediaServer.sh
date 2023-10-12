#!/bin/bash
# Automatically shuts the script down when you encounter an error
set -e

#Install Jellyfin
curl https://repo.jellyfin.org/install-debuntu.sh | sudo bash
sudo setfacl -m u:jellyfin:rx /media/sean.

#Install Notifiarr
curl -s https://golift.io/repo.sh | sudo bash -s - notifiarr

