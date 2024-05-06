#!/bin/bash

ip route add 10.10.0.0/16 via 10.10.10.100 
ip route add 2001:db8:2021:100::/64 via 2001:db8:2021:10::100

while true; do sleep 10; done