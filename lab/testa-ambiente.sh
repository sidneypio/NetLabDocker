#!/bin/bash
# testa o ambiente criado
#
echo "## Verificando conectidade a partir de cliente1 ##"
echo ""
echo "### ping para cliente2 usando IPv4 ###"
docker exec cliente1 /bin/ping -n -c 1 10.10.10.20

echo "### ping para cliente2 usando IPv6 ###"
docker exec cliente1 /bin/ping6 -n -c 1 2001:db8:2021:10::20

echo "### traceroute para web usando IPv4"
docker exec cliente1 /usr/bin/traceroute -n 10.10.100.10

echo "### traceroute para web usando IPv6"
docker exec cliente1 /usr/bin/traceroute -n 2001:db8:2021:100::10

echo "### curl para web usando IPv4"
docker exec cliente1 /usr/bin/curl -i http://10.10.100.10

echo "### curl para web usando IPv6"
docker exec cliente1 /usr/bin/curl -i http://[2001:db8:2021:100::10]

echo "### testando porta 22 no servidor ssh usando IPv4"
docker exec cliente1 timeout 5 bash -c "</dev/tcp/10.10.100.30/22"; echo $?


echo "### curl para ftp usando IPv4"
docker exec cliente1 /usr/bin/curl ftp://10.10.100.40/pub/arquivo.txt

echo "### curl para ftp usando IPv6"
docker exec cliente1 /usr/bin/curl ftp://[2001:db8:2021:100::40]/pub/arquivo.txt
