#!/bin/bash
#
# Removendo enderecos IPv6 da ligacao de R1 e R2
# sidney - 07/2021
#
printf "\nRemovendo endereços IPv6 da interface eth1 de R1"
docker exec -it R1 sh -c "ip addr del 2001:db8:2021:50::10/64 dev eth1"
docker exec -it R1 sh -c "ip addr del fe80::42:aff:fe0a:320a/64 dev eth1"

printf "\nRemovendo endereços IPv6 da interface eth0 de R2"
docker exec -it R2 sh -c "ip addr del 2001:db8:2021:50::20/64 dev eth0"
docker exec -it R2 sh -c "ip addr del fe80::42:aff:fe0a:3214/64 dev eth0"

read -p "Pressione ENTER para continuar"
printf "\nVerificando os endereços IP de R1:\n"
docker exec -it R1 sh -c "ip a s"

read -p "Pressione ENTER para continuar"
printf "\nVerificando os endereços IP de R2:\n"
docker exec -it R2 sh -c "ip a s"
