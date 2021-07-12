#!/bin/bash


add-apt-repository ppa:neovim-ppa/unstable
apt install apt-transport-tor fail2ban fish screen 
echo "deb [arch=amd64] tor://sdscoq7snqtznauu.onion/torproject.org focal main" >> /etc/apt/sources.list
apt update && apt dist-upgrade


