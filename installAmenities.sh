#!/bin/bash
sudo apt update

#add kali repos
echo "deb http://http.kali.org/kali kali-rolling main contrib non-free non-free-firmware" | sudo tee /etc/apt/sources.list


#homebrew
sudo apt install build-essential procps curl file git
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> /home/user_name/.profile
echo "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
brew update
brew install gcc

#thefuck
brew install thefuck
sudo apt install thefuck

#birthday
sudo npm install --global birthday

#onetimeshare
brew install ots

#undollar
sudo npm install -g undollar

#googlefontinstaller
sudo npm install -g google-font-installer

#nipe for tor
sudo apt install cpanminus tor 
git clone https://github.com/htrgouvea/nipe && cd nipe
sudo cpanm --installdeps .
sudo perl nipe.pl install
sudo  perl nipe.pl start
