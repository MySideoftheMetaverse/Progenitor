#!/bin/bash

# Automatically shuts the script down when you encounter an error
set -e

curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | sudo bash

sudo apt install command-not-found apt-file
sudo apt install plocate && sudo /etc/cron.daily/plocate


wget https://golang.org/dl/go1.20.2.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.20.2.linux-amd64.tar.gz
echo "export PATH=/usr/local/go/bin:${PATH}" | sudo tee -a $HOME/.profile
source $HOME/.profile

mkdir -p ~/miniconda3
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda3/miniconda.sh
bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3
rm -rf ~/miniconda3/miniconda.sh

#Install Brave
sudo apt install curl libxcb-glx0-dev libfontconfig-dev apt-transport-https dialog unzip xmlstarlet libudev-dev libxkbcommon-dev libsdl2-dev libasound2-dev libusb-1.0-0-dev libx11-xcb-dev libpulse-dev libvulkan-dev libavcodec-dev libavformat-dev libavdevice-dev python3-pyudev telegram-desktop git wget vlc snapd gramps python3-pip caffeine flatpak freerdp2-x11 virt-manager libclang-dev qbittorrent
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install brave-browser

flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

# Install Rust
curl https://sh.rustup.rs -s | sh 

#Install h8mail
git clone https://github.com/khast3x/h8mail.git
cd h8mail
sudo python3 setup.py install

#Install Grub Customizer
sudo add-apt-repository ppa:trebelnik-stefina/grub-customizer
sudo apt update
sudo apt install grub-customizer

#Install Eggs
git clone https://github.com/pieroproietti/addaura
cd addaura
sudo ./addaura.sh

#Install RetroPie
git clone --depth=1 https://github.com/RetroPie/RetroPie-Setup.git

#Install WinApps
git clone https://github.com/Fmstrat/winapps.git

#Install Jellyfin
curl https://repo.jellyfin.org/install-debuntu.sh | sudo bash
sudo setfacl -m u:jellyfin:rx /media/sean.

pip install psutil pyyaml



#Install Notifiarr
curl -s https://golift.io/repo.sh | sudo bash -s - notifiarr

#Install NTFY
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://archive.heckel.io/apt/pubkey.txt | sudo gpg --dearmor -o /etc/apt/keyrings/archive.heckel.io.gpg
sudo sh -c "echo 'deb [arch=amd64 signed-by=/etc/apt/keyrings/archive.heckel.io.gpg] https://archive.heckel.io/apt debian main' \
    > /etc/apt/sources.list.d/archive.heckel.io.list"  
sudo apt update
sudo apt install ntfy
sudo systemctl enable ntfy
sudo systemctl start ntfy


