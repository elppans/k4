#!/bin/bash

##KERNEL4
if ! uname -r | grep '4.1.6-040106-generic' ; then
sudo dpkg -i --force-all libkmod2*.deb
sudo dpkg -i --force-all module-init-tools*.deb
sudo dpkg -i --force-all kmod*.deb
sudo dpkg -i linux-headers-4.1.6*.deb linux-image-4.1.6*.deb
sudo update-grub
fi
##KERNEL4
