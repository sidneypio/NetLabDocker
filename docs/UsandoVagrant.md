# Executando o laboratório usando Virtualbox - imagem gerada com vagrant
--- 

# Para impacientes:
* Deve-se instalar o  virtualbox e vagrant (https://www.vagrantup.com/)
* Clonar o repositório (git clone https://github.com/sidneypio/NetLabDocker)
* Criando a VM com vagrant
**  cd NetLabDocker/vb
**  vagrant up
* Logando na VM criada pelo vagrant: vagrant ssh 
* Após logar na VM, o diretório com o laboratório estará em /dados

Instalação do virtualbox
Acessar o site do projeto (https://www.virtualbox.org/) e realizar o download e instalação da última versão (versão 6.1)
Instalação do vagrant
Acessar o site do projeto (https://www.vagrantup.com/) escolher a opção Download, escolher o sistema operacional e realizar a instalação de acordo com as instruções do site. 
Depois da instalação, digite o comando:
vagrant -v
O resultado deve ser:
Vagrant 2.2.19

Cópia do repositório 
O repositório com os arquivos é: 
https://github.com/sidneypio/NetLabDocker
O código por ser copiado:
usando o git (git clone https://github.com/sidneypio/NetLabDocker)
ou transferindo manualmente e depois descompactado.

Criando a VM utilizada no laboratório
Para criar a VM utilizada no curso, será utilizado o arquivo VagrantFile com as definições necessárias;
Será criada uma máquina virtual no virtualbox baseada no debian 11 e com todos os pacotes para execução do projeto via docker;
Como os arquivos serão transferidos pela rede, esse processo pode levar um certo tempo para ser finalizado;
Comando utilizado:
	cd NetLabDocker/vb
vagrant up

Será criada uma imagem com 3 GB aproximadamente
Utilizando a VM criada pelo vagrant
Ao invés de acessar a VM utilizando a interface do virtualbox, podemos acessar a máquina usando o ssh, executando vagrant ssh
Para verificar o status da VM: vagrant status
Para parar a máquina: vagrant halt
Para remover a VM: vagrant destroy 

Referências:
Explicação sobre a ferramenta vagrant: https://www.vagrantup.com/intro
Documentação do vagrant: https://www.vagrantup.com/docs
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

## Executando os containers (pensando na disciplina inf534)
```
cd NetLabDocker
cd lab-inf534
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
* [lab-inf534](https://github.com/sidneypio/NetLabDocker/tree/main/lab-inf534#readme)


