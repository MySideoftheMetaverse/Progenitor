#!/bin/bash
# Automatically shuts the script down when you encounter an error
set -e

git clone https://github.com/casualsnek/cassowary
cd cassowary
chmod +x buildall.sh
./buildall.sh


sudo sed -i "s/#user = \"root\"/user = \"$(id -un)\"/g" /etc/libvirt/qemu.conf
sudo sed -i "s/#group = \"root\"/group = \"$(id -gn)\"/g" /etc/libvirt/qemu.conf
sudo usermod -a -G kvm $(id -un)
sudo usermod -a -G libvirt $(id -un)
sudo systemctl restart libvirtd
sudo ln -s /etc/apparmor.d/usr.sbin.libvirtd /etc/apparmor.d/disable/

wget https://gitlab.com/apparmor/apparmor/-/raw/master/profiles/apparmor.d/usr.sbin.dnsmasq -O ~/usr.sbin.dnsmasq
sudo mv ~/usr.sbin.dnsmasq /etc/apparmor.d/
sudo sed -i "s/\/usr\/libexec\/libvirt_leaseshelper m,/\/usr\/libexec\/libvirt_leaseshelper mr,/g" /etc/apparmor.d/usr.sbin.dnsmasq

mkdir -p ~/.config/libvirt
echo "uri_default = \"qemu:///system\"" >> ~/.config/libvirt/libvirt.conf

wget https://github.com/casualsnek/cassowary/releases/download/0.6/cassowary-0.6-py3-none-any.whl
wget https://fedorapeople.org/groups/virt/virtio-win/direct-downloads/stable-virtio/virtio-win.iso


sudo apt install python3 python3-pip freerdp2-x11
pip3 install PyQt5 --break-system-packages

pip install cassowary* --break-system-packages
echo "PATH=\$PATH:$HOME/.local/bin" >> $HOME/.profile

echo 'you will have to complete setup manually'

