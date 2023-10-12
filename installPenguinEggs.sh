#!/bin/bash
# Automatically shuts the script down when you encounter an error
set -e


#Install Eggs
git clone https://github.com/pieroproietti/addaura
cd addaura
sudo ./addaura.sh
