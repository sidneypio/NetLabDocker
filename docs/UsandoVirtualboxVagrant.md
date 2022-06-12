# Executando o laboratório usando Virtualbox - imagem gerada com vagrant

# Quickstart:
## Pré-requisitos
* virtualbox (https://www.virtualbox.org/)
* vagrant (https://www.vagrantup.com/)
* wireshark  (https://www.wireshark.org/)
* opcional: git (https://git-scm.com/)
## Criação da VM
* Clonar o repositório (git clone https://github.com/sidneypio/NetLabDocker)
* Criando a VM com vagrant
```
cd NetLabDocker/vb
vagrant up
```
## Acessando a VM criada pelo vagrant
* Para acessar a VM, podemos usar o comando **vagrant ssh** no mesmo diretório aonde está localizado o **VagrantFile**

## Executando o laboratório na VM
```
cd /dados/inf534
make liga
```

# Instruções mais detalhadas
## Pré-requisitos
### Instalação do virtualbox
* Acessar o site do projeto (https://www.virtualbox.org/) e realizar o download e instalação da última versão (versão 6.1)
### Instalação do vagrant
* Acessar o site do projeto (https://www.vagrantup.com/) escolher a opção Download, escolher o sistema operacional e realizar a instalação de acordo com as instruções do site. 
* Depois da instalação, digite o comando:
```
vagrant -v
```
* O resultado deverá ser:
```
Vagrant 2.2.19
```
### Instalação do wireshark
* Se utilizar sistemas Unix-like, pode utilizar o comando de seu sistema de gerenciamento de pacotes (apt, yum, dnf, etc) para proceder a instalação;
* Se for outro sistema operacional, acesse o site do wireshark (https://www.wireshark.org/), clique em Downloads e escolha o arquivo baseado no seu sistema operacional.


### Instalação do git
* Se utilizar sistemas Unix-like, pode utilizar o comando de seu sistema de gerenciamento de pacotes (apt, yum, dnf, etc) para proceder a instalação;
* Acesse o site do git (https://git-scm.com/downloads) e instale o git escolhendo a versão para seu sistema operacional.

## Cópia do repositório 
* O repositório com os arquivos é: 
https://github.com/sidneypio/NetLabDocker
* O código por ser copiado:
  * usando o git (git clone https://github.com/sidneypio/NetLabDocker)
  * ou transferindo manualmente e depois descompactado.

## Criação da VM
* Para criar a VM utilizada no curso, será utilizado o arquivo **VagrantFile** com as definições necessárias;
* Será criada uma máquina virtual no virtualbox baseada no debian 11 e com todos os pacotes para execução do projeto via docker;
* Como os arquivos serão transferidos pela rede, esse processo pode levar um certo tempo para ser finalizado;
* Comandos utilizados para criação da VM:
```
cd NetLabDocker/vb
vagrant up
```

* Será criada uma imagem com 3 GB aproximadamente.


## Acessando a VM criada pelo vagrant
* Para acessar a VM, podemos usar o comando **vagrant ssh** no mesmo diretório aonde está localizado o **VagrantFile**

## Executando o laboratório na VM
* Após logar na VM, o diretório com o laboratório estará em /dados.
* Para executar o laboratório, após logar na máquina virtual, deve-se ir ao diretorório /dados (aonde teremos uma cópia do projeto) e depois ir em lab-inf534 e inicializar os dockers:
```
cd /dados/lab-inf534
make liga
```
* após os comandos acima, os containers serão inicializados e o ambiente estará pronto para a disciplina.

## Desligando o laboratório na VM
* Após a utilização do laboratório, os containers poderão ser desligadas, usando os comandos:
```
cd /dados/lab-inf534
make desliga
```

# Comandos adicionais do vagrant:
* Para verificar o status da VM: **vagrant status**
* Para parar a máquina: **vagrant halt**
* Para remover a VM: **vagrant destroy**

# Referências:
* Explicação sobre a ferramenta vagrant: https://www.vagrantup.com/intro
* Documentação do vagrant: https://www.vagrantup.com/docs
 