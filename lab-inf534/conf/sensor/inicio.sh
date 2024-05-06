#!/bin/sh
#

# Removendo rota default 
ip route del default
ip -6 route del default

# Adicionando rotas para o laboratorio
ip route add 10.10.0.0/16 via 10.10.10.100 
ip route add 2001:db8:2021:100::/64 via 2001:db8:2021:10::100

#while true; do sleep 10; done
/app/sensor.py
