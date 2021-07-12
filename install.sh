#!/bin/bash

apt install software-properties-common -y &&
add-apt-repository ppa:neovim-ppa/unstable && apt update &&
apt install apt-transport-tor fail2ban fish screen neovim -y &&
echo "deb [arch=amd64] tor://sdscoq7snqtznauu.onion/torproject.org focal main" >> /etc/apt/sources.list
apt update && apt dist-upgrade -y 

cp -vr etc/fail2ban/* /etc/fail2ban/
cp -vr root/* /root/

