#!/bin/bash
export DEBIAN_FRONTEND=noninteractive 
export DEBCONF_NONINTERACTIVE_SEEN=true

useradd -m user-account 
usermod -aG sudo user-account
echo -e "\n\n\n Please enter PW for user-account"
passwd user-account

echo "tzdata tzdata/Areas select Europe" > preseed.txt
echo "" >> preseed.txt 
debconf-set-selections preseed.txt 



apt install software-properties-common -y &&
add-apt-repository ppa:neovim-ppa/unstable -y && apt update &&
apt install apt-transport-tor tor fail2ban fish screen neovim -y &&
echo "deb [arch=amd64] tor://sdscoq7snqtznauu.onion/torproject.org focal main" >> /etc/apt/sources.list
service tor start
apt update && apt update && apt dist-upgrade -y 



cp -vr etc/fail2ban/* /etc/fail2ban/
cp -vr root/* /root/

echo -e "\n\nRemember to init a SSH-Session via the user before reloading Fail2Ban"

