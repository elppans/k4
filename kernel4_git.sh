#!/bin/bash

rm -rf /etc/apt/sources.list.d/*
sed -i "/erlang/s/deb/#deb/g" /etc/apt/sources.list
apt-get update
apt-get -y install git
mkdir -p ~/kernel4
cd ~/kernel4
git clone https://github.com/elppans/k4.git `pwd`
bash k4.sh

