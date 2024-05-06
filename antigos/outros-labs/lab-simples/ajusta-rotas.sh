#!/bin/bash
# Arquivo para ajustar rotas das maquinas 
# Nao inicializarei automaticamente para exemplificar aos alunos um problemas de roteamento

echo "Ajustando rotas dos servidor nginx"
docker exec nginx ip route add 10.10.10.0/24 via 10.10.100.100 
docker exec nginx ip route add 2001:db8:2021:10::/64 via 2001:db8:2021:100::100 

echo "Removendo rota default dos roteador R1"
docker exec R1 ip route del default
docker exec R1 ip -6 route del default
