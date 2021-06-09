# NetLabDocker - Laboratório de redes usando docker
* A ideia é criar um ambiente usando docker para estudo de protocolos de rede

--- 

# Quickstart
## Pre-requisitos
* git (https://git-scm.com/)
* docker 
  * Ambiente Linux: https://docs.docker.com/engine
  * Ambiente Windows e Mac: https://docs.docker.com/desktop
* docker-compose (https://docs.docker.com/compose)
## Clonando o repositorio
```
git clone https://github.com/sidneypio/NetLabDocker.git
```

## Executando os containers
```
cd NetLabDocker
cd lab
make liga
```

## Testando 
```
./testa-ambiente.sh
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

---

# Algumas informações sobre os diretórios

* [imagens](https://github.com/sidneypio/NetLabDocker/tree/main/imagens#readme)
* [lab-inicial](https://github.com/sidneypio/NetLabDocker/tree/main/lab-inicial#readme)
* [lab](https://github.com/sidneypio/NetLabDocker/tree/main/lab#readme)
* [lab-roteamento](https://github.com/sidneypio/NetLabDocker/tree/main/lab-roteamento#readme)

