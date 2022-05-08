#!/bin/bash
# Testes de conectividade
# sidney - 07/2021
#
printf "\nVerificando conectividade entre cliente1 e servidor ssh atraves de IPv6\n"
docker exec -it cliente1 sh -c "ping6 -c 1 2001:db8:2021:100::30"
