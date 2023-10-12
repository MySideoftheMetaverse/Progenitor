#!/bin/bash
# Automatically shuts the script down when you encounter an error
set -e

#Installs Dependencies
sudo apt install curl libxcb-glx0-dev command-not-found apt-file plocate libfontconfig-dev apt-transport-https dialog unzip xmlstarlet libudev-dev libxkbcommon-dev libsdl2-dev libasound2-dev libusb-1.0-0-dev libx11-xcb-dev libpulse-dev libvulkan-dev libavcodec-dev libavformat-dev libavdevice-dev python3-pyudev telegram-desktop git wget vlc snapd gramps python3-pip caffeine flatpak freerdp2-x11 virt-manager libclang-dev qbittorrent
pip install psutil pyyaml
sudo /etc/cron.daily/plocate

#Installs Git LFS
curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | sudo bash


#Installs Flatpak
 apt install flatpak
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo



# Install Rust
curl https://sh.rustup.rs -s | sh 

