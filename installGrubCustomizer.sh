#!/bin/bash
# Automatically shuts the script down when you encounter an error
set -e

#Install Grub Customizer
sudo add-apt-repository ppa:trebelnik-stefina/grub-customizer
sudo apt update
sudo apt install grub-customizer
