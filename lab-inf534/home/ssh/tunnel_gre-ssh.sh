ip tunnel add tun0 mode gre remote 10.10.10.10 local 10.10.100.30
ip link set tun0 up
ip addr add  192.168.100.30 dev tun0
ip route add 192.168.10.0/24 dev tun0

