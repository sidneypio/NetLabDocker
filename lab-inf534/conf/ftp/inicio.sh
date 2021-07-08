#!/bin/bash

# Removendo rota default 
ip route del default
ip -6 route del default

# ajustando rota
ip route add 10.10.0.0/16 via 10.10.100.100 
ip route add 2001:db8:2021:10::/64 via 2001:db8:2021:100::100 
ip route add 2001:db8:2021:50::/64 via 2001:db8:2021:100::100 


# iniciando servidor vsftpd
# para Alpine
# https://wiki.alpinelinux.org/wiki/FTP
#/usr/sbin/vsftpd /etc/vsftpd/vsftpd.conf
#/usr/sbin/vsftpd /etc/vsftpd/vsftpd6.conf
# criando um diretorio de dados para o usuario ftp (anonymous)
#mkdir -p ~ftp/pub
#echo "Arquivo teste para inf534" > ~ftp/pub/arquivo.txt

# Para Debian
# criando usuario inf500 com senha inf500
adduser --home /home/inf500 --shell /bin/bash --disabled-password --gecos "usuario para teste inf500" inf500

# mudando a senha do usuario inf500 para inf500
echo "inf500:inf500" |chpasswd

# iniciando servidor vsftpd
/etc/init.d/proftpd start

# nao precisa do while porque o vsftpd rodara em foreground
while true; do sleep 10; done
