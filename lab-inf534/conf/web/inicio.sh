#!/bin/bash

# Removendo rota default
ip route del default
ip -6 route del default

# ajustando rota
ip route add 10.10.0.0/16 via 10.10.100.100 
ip route add 2001:db8:2021:10::/64 via 2001:db8:2021:100::100 
ip route add 2001:db8:2021:50::/64 via 2001:db8:2021:100::100 

# iniciando servidor nginx
/etc/init.d/nginx start

while true; do sleep 10; done
