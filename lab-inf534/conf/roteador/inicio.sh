#!/bin/bash


# Removendo rota default 
ip route del default
ip -6 route del default

# para debian:
/etc/init.d/frr start

# para alpine:
#/usr/lib/frr/frrinit.sh start

while true; do sleep 10; done