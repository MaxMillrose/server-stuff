#!/bin/bash

apt install software-properties-common -y &&
add-apt-repository ppa:neovim-ppa/unstable && apt update &&
apt install apt-transport-tor tor fail2ban fish screen neovim -y &&
echo "deb [arch=amd64] tor://sdscoq7snqtznauu.onion/torproject.org focal main" >> /etc/apt/sources.list
apt update && apt dist-upgrade -y 

useradd -m millrose 
usermod -aG millrose sudo millrose
echo -e "\n \t Please enter PW for millrose"
passwd millrose


cp -vr etc/fail2ban/* /etc/fail2ban/
cp -vr root/* /root/

