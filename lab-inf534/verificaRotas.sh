#!/bin/bash
#
# verificando tabelas de rotas
# sidney - 08/07/2021
for c in cliente1 cliente2 cliente3 R1 R2 ftp ssh web
do
	echo Testando rotas de $c
	docker exec -it $c sh -c "ip r s"
done
