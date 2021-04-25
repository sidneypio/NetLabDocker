#!/bin/bash
#mkdir -p /run/quagga
#chown quagga:quagga /run/quagga

/usr/sbin/zebra -f /etc/quagga/zebra.conf &
/usr/sbin/ripd -f /etc/quagga/ripd.conf &
/usr/sbin/ripngd -f /etc/quagga/ripngd.conf
#sleep 10000
