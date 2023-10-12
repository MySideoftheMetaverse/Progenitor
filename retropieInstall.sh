#!/bin/bash
# Automatically shuts the script down when you encounter an error
set -e

#Install RetroPie
git clone --depth=1 https://github.com/RetroPie/RetroPie-Setup.git
sudo ./RetroPie-Setup/retropie_setup.sh
