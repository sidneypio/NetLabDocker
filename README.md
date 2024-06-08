# NetLabDocker - Laboratório de redes usando docker
* A ideia é criar um ambiente usando docker para estudo de protocolos de rede

--- 

# Quickstart
## Pre-requisitos
* git (https://git-scm.com/)
* docker (recomendado utilizar última versão)
  * Engine: https://docs.docker.com/engine
  * Desktop: https://docs.docker.com/desktop
## Clonando o repositorio
```
git clone https://github.com/sidneypio/NetLabDocker.git
```

## Executando os containers (pensando na disciplina inf534)
```
cd NetLabDocker
cd lab-inf534
make liga
```

## Testando 
```
./testaAmbiente.sh
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
* [lab-inf534](https://github.com/sidneypio/NetLabDocker/tree/main/lab-inf534#readme)


