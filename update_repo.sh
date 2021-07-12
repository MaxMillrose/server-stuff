#!/bin/bash


cp -v /etc/fail2ban/action.d/iptables-common.local etc/fail2ban/action.d/iptables-common.local
cp -v /etc/fail2ban/fail2ban.local etc/fail2ban/fail2ban.local
cp -v /etc/fail2ban/filter.d/sshd-ban-root.conf etc/fail2ban/filter.d/sshd-ban-root.conf 
cp -v /etc/fail2ban/filter.d/sshd-invaliduser.conf etc/fail2ban/filter.d/sshd-invaliduser.conf
cp -v /etc/etc/fail2ban/jail.local etc/fail2ban/jail.local
cp -v /root/.aliases root/aliases
cp -v /root/bashrc root/bashrc


