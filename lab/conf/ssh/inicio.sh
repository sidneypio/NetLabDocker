#!/bin/bash

# https://wiki.alpinelinux.org/wiki/Setting_up_a_ssh-server
# Rodar da primeira vez:
#ssh-keygen -f /etc/ssh/ssh_host_rsa_key -N '' -t rsa
#ssh-keygen -f /etc/ssh/ssh_host_dsa_key -N '' -t dsa

/usr/sbin/sshd 

while true; do sleep 10; done