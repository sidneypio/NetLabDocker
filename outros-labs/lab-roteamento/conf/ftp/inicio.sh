#!/bin/bash


# ajustando rota
ip route add 10.10.10.0/24 via 10.10.100.100 
ip route add 2001:db8:2021:10::/64 via 2001:db8:2021:100::100 

# criando um diretorio de dados para o usuario ftp (anonymous)
mkdir -p ~ftp/pub
echo "Arquivo teste para inf534" > ~ftp/pub/arquivo.txt

# iniciando servidor vsftpd
# https://wiki.alpinelinux.org/wiki/FTP
/usr/sbin/vsftpd /etc/vsftpd/vsftpd.conf

# nao precisa do while porque o vsftpd rodara em foreground
#while true; do sleep 10; done
