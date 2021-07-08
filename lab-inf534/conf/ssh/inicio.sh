#!/bin/bash

# para Alpine Linux
# https://wiki.alpinelinux.org/wiki/Setting_up_a_ssh-server
# Rodar da primeira vez:
#ssh-keygen -f /etc/ssh/ssh_host_rsa_key -N '' -t rsa
#ssh-keygen -f /etc/ssh/ssh_host_dsa_key -N '' -t dsa
# criando usuario inf500 com senha inf500
#adduser -D --home /home/inf500 --shell /bin/ash -g "usuario para teste inf500" inf500
#echo "inf500:inf500" |chpasswd
# iniciando ssh server
#/usr/sbin/sshd 


# Para Debian
# criando usuario inf500 com senha inf500
adduser --home /home/inf500 --shell /bin/bash --disabled-password --gecos "usuario para teste inf500" inf500

# mudando a senha do usuario inf500 para inf500
echo "inf500:inf500" |chpasswd

# iniciando ssh server
#/usr/bin/ssh-keygen -A
/etc/init.d/ssh  start

# Removendo rota default 
ip route del default
ip -6 route del default

# ajustando rota
ip route add 10.10.0.0/16 via 10.10.100.100 
ip route add 2001:db8:2021:10::/64 via 2001:db8:2021:100::100 
ip route add 2001:db8:2021:50::/64 via 2001:db8:2021:100::100 

while true; do sleep 10; done
