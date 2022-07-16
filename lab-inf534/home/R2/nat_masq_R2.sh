/usr/sbin/iptables -t nat -A POSTROUTING -o eth1 -j MASQUERADE
/usr/sbin/iptables -A FORWARD -i eth1 -o eth0 -m state --state RELATED,ESTABLISHED -j ACCEPT
/usr/sbin/iptables -A FORWARD -i eth0 -o eth1 -j ACCEPT
