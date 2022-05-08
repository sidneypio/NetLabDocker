#!/bin/bash
# verificar a versao do ping instalado nos containers
# ping pode ser instalado a partir de inetutils, iputils e busybox-extras
# vamos padronizar com o iputils
#
# sidney - 17/06/2021
for c in cliente1 cliente2 cliente3 R1 R2 ftp ssh web
do
	echo Testando $c
	docker exec -it $c sh -c "ping -V"
done
