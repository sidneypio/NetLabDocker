#!/bin/bash
#
# Cria o tunel
# sidney - 07/2021
#
printf "\nAjuste em R1\n"
docker exec -it R1 sh -c "ip tunnel add tunelPara100 mode sit ttl 64 remote 10.10.50.20 local 10.10.50.10"
docker exec -it R1 sh -c "ip link set dev tunelPara100 up"
docker exec -it R1 sh -c "sysctl net.ipv6.conf.sit0.disable_ipv6=0"
#sysctl -a |grep -i disable|grep -i ipv
docker exec -it R1 sh -c "sysctl net.ipv6.conf.tunelPara100.disable_ipv6=0"
docker exec -it R1 sh -c "ip -6 route add 2001:db8:2021:100::/64 dev tunelPara100"

printf "\nAjuste em R2\n"
docker exec -it R2 sh -c "ip tunnel add tunelPara10 mode sit ttl 64 remote 10.10.50.10 local 10.10.50.20"
docker exec -it R2 sh -c "ip link set dev tunelPara10 up"
docker exec -it R2 sh -c "sysctl net.ipv6.conf.sit0.disable_ipv6=0"
docker exec -it R2 sh -c "sysctl net.ipv6.conf.tunelPara10.disable_ipv6=0"
docker exec -it R2 sh -c "ip -6 route add 2001:db8:2021:10::/64 dev tunelPara10"

read -p "Pressione ENTER para continuar"
printf "\nVerificando os endereços IP de R1:\n"
docker exec -it R1 sh -c "ip a s"

read -p "Pressione ENTER para continuar"
printf "\nVerificando os endereços IP de R2:\n"
docker exec -it R2 sh -c "ip a s"

read -p "Pressione ENTER para continuar"
printf "\n Agora pode fazer a caputa de pacotes em R2, usando o comando\n"
printf "tcpdump -ni eth0 -w /home/6in4-eth0.pcap"