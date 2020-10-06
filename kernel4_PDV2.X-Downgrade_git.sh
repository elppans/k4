#!/bin/bash

#Repositórios:

#deb http://us.archive.ubuntu.com/ubuntu/ xenial main multiverse restricted universe
#deb http://us.archive.ubuntu.com/ubuntu/ xenial-backports main multiverse restricted universe
#deb http://us.archive.ubuntu.com/ubuntu/ xenial-proposed main multiverse restricted universe
#deb http://us.archive.ubuntu.com/ubuntu/ xenial-security main multiverse restricted universe
#deb http://us.archive.ubuntu.com/ubuntu/ xenial-updates main multiverse restricted universe


#. /etc/default/grub
#sed -i "/GRUB_DISTRIBUTOR/s/$GRUB_DISTRIBUTOR/PDV 2.0.rc20103/g" /etc/default/grub
#. /etc/default/grub
#sudo update-grub

apt-get clean ; apt-get autoclean ; apt-get update
apt-get install git
apt-get install initramfs-tools-bin initramfs-tools-core initramfs-tools
apt-get install kmod libkmod2

mkdir -p ~/kernel4
cd ~/kernel4
git clone https://github.com/elppans/k4.git `pwd`
sudo dpkg -i --force-all module-init-tools*.deb
sudo dpkg -i linux-headers-4.1.6*_all.deb
sudo dpkg -i linux-headers-4.1.6*_i386.deb
sudo dpkg -i linux-image-4.1.6*.deb
#sudo dpkg -i linux-headers-4.1.6*.deb linux-image-4.1.6*.deb

sudo mkdir -p /boot_bkp
sudo mv /boot/*`uname -r` /boot_bkp/
sudo update-grub

## opcional: apt-get install xserver-xorg-core ; apt-get install xserver-xorg-input-all
#add-apt-repository -y ppa:danielrichter2007/grub-customizer
#apt-get -y install grub-customizer

