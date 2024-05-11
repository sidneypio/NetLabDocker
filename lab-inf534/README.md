# Laboratório de redes para a disciplina inf534 usando docker

Topologia mais elaborada, com 5 containers na rede cliente, 2 roteadores e 5 servidores (1 servidor web (nginx), 1 servidor ftp, 1 servidor ssh, 1 servidor de dns (bind) e 1 servidor mqtt (mosquitto))

## Diagrama da rede
* O diagrama da rede apresentado a seguir foi gerado pelo programa "draw.io" (https://app.diagrams.net/), utilizando o arquivo diagrama.drawio 

![Diagrama da rede](./diagrama.drawio.png "Diagrama da rede")

## Plano de endereçamento
![Plano de endereçamento](./planoEnderecamento.png "Plano de endereçamento")

## Clientes
### cliente1, cliente2 e cliente3
* utilizam a imagem debian-cliente (debian buster com alguns pacotes como traceroute, tcpdump, netcat, curl, links, nmap, ftp)
### sensor e monitor
* utilizam alpine-linux como base e scripts em python para comunicação com o servidor mqtt

## Roteadores
### R1 e R2
* Utilizado o software frr (https://frrouting.org/)
  * utilizando rip e ripng (bem simples)
  * Arquivo de configuracao: /etc/frr/frr.conf
  * Comando de linha para configuração: vtysh
  * documentação para usuário: http://docs.frrouting.org/en/latest/

## Servidores
### web (nginx), ftp, ssh e dns.
* para o ssh, temos usuario inf500 com senha inf500
* o servidor ftp aceita login anonimo (usuario ftp sem senha)
* o servidor de dns (bind) utiliza a imagem alpine-bind 
### mqtt
* utilizando imagem oficial docker do eclipse-mosquitto 
