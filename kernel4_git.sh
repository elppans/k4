#!/bin/bash

cp -fv /etc/apt/sources.list /etc/apt/sources.list.old
#sed -i "/erlang/s/deb/#deb/g" /etc/apt/sources.list
rm -rf /etc/apt/sources.list.d/*
echo -e '
deb http://old-releases.ubuntu.com/ubuntu precise main universe restricted multiverse
deb http://old-releases.ubuntu.com/ubuntu precise-updates main universe restricted multiverse
deb http://old-releases.ubuntu.com/ubuntu precise-security main universe restricted multiverse
deb http://old-releases.ubuntu.com/ubuntu precise-proposed main universe restricted multiverse
deb http://old-releases.ubuntu.com/ubuntu precise-backports main universe restricted multiverse
' | tee /etc/apt/sources.list >> /dev/null
apt-get update
apt-get -y install git
mkdir -p ~/kernel4
cd ~/kernel4
git clone https://github.com/elppans/k4.git `pwd`
bash k4.sh

