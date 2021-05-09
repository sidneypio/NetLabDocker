# NetLabDocker - Laboratório de redes usando docker
* A ideia é criar um ambiente usando docker para estudo de protocolos de rede

# Quickstart
## Pre-requisitos
* git
* docker 
## Clonando o repositorio
```
git clone https://github.com/sidneypio/NetLabDocker.git
```

## Executando os containers
```
cd NetLabDocker
cd lab
make liga
./ajusta-rotas.sh
```

## Testando 
```
./testa-ambiente.sh
```
* Resultado da execução:
```
## Verificando conectidade a partir de cliente1 ##
### ping para cliente2 usando IPv4 ###
PING 10.10.10.20 (10.10.10.20): 56 data bytes
64 bytes from 10.10.10.20: icmp_seq=0 ttl=64 time=0.144 ms
64 bytes from 10.10.10.20: icmp_seq=1 ttl=64 time=0.153 ms
64 bytes from 10.10.10.20: icmp_seq=2 ttl=64 time=0.152 ms
--- 10.10.10.20 ping statistics ---
3 packets transmitted, 3 packets received, 0% packet loss
round-trip min/avg/max/stddev = 0.144/0.150/0.153/0.000 ms
### ping para cliente2 usando IPv6 ###
PING 2001:db8:2021:10::20 (2001:db8:2021:10::20): 56 data bytes
64 bytes from 2001:db8:2021:10::20: icmp_seq=0 ttl=64 time=0.136 ms
64 bytes from 2001:db8:2021:10::20: icmp_seq=1 ttl=64 time=0.131 ms
64 bytes from 2001:db8:2021:10::20: icmp_seq=2 ttl=64 time=0.129 ms
--- 2001:db8:2021:10::20 ping statistics ---
3 packets transmitted, 3 packets received, 0% packet loss
round-trip min/avg/max/stddev = 0.129/0.132/0.136/0.000 ms
### traceroute para nginx usando IPv4
traceroute to 10.10.100.10 (10.10.100.10), 30 hops max, 60 byte packets
 1  10.10.10.100  0.151 ms  0.047 ms  0.030 ms
 2  10.10.12.20  0.054 ms  0.040 ms  0.039 ms
 3  10.10.23.30  0.060 ms  0.058 ms  0.049 ms
 4  10.10.100.10  0.130 ms  0.067 ms  0.063 ms
### traceroute para nginx usando IPv6
traceroute to 2001:db8:2021:100::10 (2001:db8:2021:100::10), 30 hops max, 80 byte packets
 1  2001:db8:2021:10::100  0.944 ms  0.799 ms  0.770 ms
 2  2001:db8:2021:12::20  0.743 ms  0.695 ms  0.663 ms
 3  2001:db8:2021:23::30  0.630 ms  0.574 ms  0.537 ms
 4  2001:db8:2021:100::10  0.496 ms  0.345 ms  0.300 ms
```

## Exemplo de acesso ao roteador R1
```
docker exec -it R1 bash
```
* Executando vtysh em R1:
```
bash-5.1# vtysh

Hello, this is FRRouting (version 7.5).
Copyright 1996-2005 Kunihiro Ishiguro, et al.

R1# 
```

## Desligando o laboratório
```
make desliga
```

# Estrutura
## imagens
* Diretório para construir as imagens;
* A construção de imagens é opcional, pois tenho uma versão das imagens geradas no Docker Hub (https://hub.docker.com/)
### Para construir as imagens
```
cd imagens
make all
```

## lab-inicial
* Exemplo de uma topologia simples com apenas 1 roteador;
* bom para entender o funcionamento do laboratório, sem a complexidade da topologia

## lab
* Topologia mais elaborada, com dois containers cliente, 4 roteadores e 4 servidores (1 nginx, 2 apache e 1 mosquitto);
### Clientes
* cliente1 e cliente2
* utilizam a imagem debian-cliente (debian buster com alguns pacotes como traceroute, tcpdump, netcat, curl, links, nmap, ftp)
### Roteadores
* R1, R2, R3 e R4
* utilizam a imagem alpine-roteador (alpne com alguns pacotes tais como frr)
* Utilizado o software frr (https://frrouting.org/)
  * utilizando rip e ripng (bem simples)
  * Arquivo de configuracao: /etc/frr/frr.conf
  * Comando de linha para configuração: vtysh
  * documentação para usuário: http://docs.frrouting.org/en/latest/
### Servidores
* nginx, apache e mosquitto
