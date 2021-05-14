#!/bin/bash
# Arquivo para ajustar rotas das maquinas servidoras
# Nao inicializarei automaticamente para exemplificar aos alunos um problemas de roteamento

echo "Ajustando rotas dos servidores"
for s in ftp ssh nginx mqtt 
do
    echo "servidor $s"
    docker exec $s ip route add 10.10.10.0/24 via 10.10.100.100 
    docker exec $s ip route add 2001:db8:2021:10::/64 via 2001:db8:2021:100::100 
done

echo "Removendo rota default dos roteadores"
for s in R1 R2 R3 R4 
do
    echo "roteador $s"
    docker exec $s ip route del default
    docker exec $s ip -6 route del default
done
