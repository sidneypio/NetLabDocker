#!/bin/bash

# https://wiki.alpinelinux.org/wiki/Setting_up_a_ssh-server
# Rodar da primeira vez:
#ssh-keygen -f /etc/ssh/ssh_host_rsa_key -N '' -t rsa
#ssh-keygen -f /etc/ssh/ssh_host_dsa_key -N '' -t dsa

# ajustando rota
ip route add 10.10.10.0/24 via 10.10.100.100 
ip route add 2001:db8:2021:10::/64 via 2001:db8:2021:100::100 

# iniciando ssh server
/usr/sbin/sshd 

while true; do sleep 10; done