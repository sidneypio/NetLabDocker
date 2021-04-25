#!/bin/bash
traceroute -n 10.10.100.40

curl http://10.10.100.40
curl http://10.10.100.30
curl http://10.10.100.50

