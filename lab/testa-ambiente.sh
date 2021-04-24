#!/bin/bash
# testa o ambiente criado
#
echo "## Verificando conectidade a partir de cliente1 ##"
echo "### ping para cliente2 usando IPv4 ###"
docker exec cliente1 /bin/ping -n -c 3 10.10.10.20
echo "### ping para cliente2 usando IPv6 ###"
docker exec cliente1 /bin/ping6 -n -c 3 2001:db8:2021:10::20
echo "### traceroute para nginx usando IPv4"
docker exec cliente1 /usr/bin/traceroute -n 10.10.100.10
echo "### traceroute para nginx usando IPv6"
docker exec cliente1 /usr/bin/traceroute -n 2001:db8:2021:100::10