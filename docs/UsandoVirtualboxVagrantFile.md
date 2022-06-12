# Executando o laboratório usando Virtualbox - imagem gerada com vagrant

# Para impacientes:
* Deve-se instalar o  virtualbox e vagrant (https://www.vagrantup.com/)
* Clonar o repositório (git clone https://github.com/sidneypio/NetLabDocker)
* Criando a VM com vagrant
  *  cd NetLabDocker/vb
  *  vagrant up
* Logando na VM criada pelo vagrant: **vagrant ssh**
* Após logar na VM, o diretório com o laboratório estará em /dados

# Instruções mais detalhadas
## Instalação do virtualbox
* Acessar o site do projeto (https://www.virtualbox.org/) e realizar o download e instalação da última versão (versão 6.1)
## Instalação do vagrant
* Acessar o site do projeto (https://www.vagrantup.com/) escolher a opção Download, escolher o sistema operacional e realizar a instalação de acordo com as instruções do site. 
* Depois da instalação, digite o comando:
```
vagrant -v
```
* O resultado deverá ser:
```
Vagrant 2.2.19
```

## Cópia do repositório 
* O repositório com os arquivos é: 
https://github.com/sidneypio/NetLabDocker
* O código por ser copiado:
  * usando o git (git clone https://github.com/sidneypio/NetLabDocker)
  * ou transferindo manualmente e depois descompactado.

## Criando a VM utilizada no laboratório
* Para criar a VM utilizada no curso, será utilizado o arquivo **VagrantFile** com as definições necessárias;
* Será criada uma máquina virtual no virtualbox baseada no debian 11 e com todos os pacotes para execução do projeto via docker;
* Como os arquivos serão transferidos pela rede, esse processo pode levar um certo tempo para ser finalizado;
* Comandos utilizados para criação da VM:
```
cd NetLabDocker/vb
vagrant up
```

* Será criada uma imagem com 3 GB aproximadamente.

## Utilizando a VM criada pelo vagrant
* Ao invés de acessar a VM utilizando a interface do virtualbox, podemos acessar a máquina usando o ssh, executando **vagrant ssh**
* Após logar na VM, o diretório com o laboratório estará em /dados.
* Para executar o laboratório, após logar na máquina virtual, deve-se ir ao diretorório /dados (aonde teremos uma cópia do projeto) e depois ir em lab-inf534 e inicializar os dockers:
```
cd /dados/lab-inf534
make liga
```
* após os comandos acima, os containers serão inicializados e o ambiente estará pronto para a disciplina.

* Para verificar o status da VM: **vagrant status**
* Para parar a máquina: **vagrant halt**
* Para remover a VM: **vagrant destroy**

# Referências:
* Explicação sobre a ferramenta vagrant: https://www.vagrantup.com/intro
* Documentação do vagrant: https://www.vagrantup.com/docs
 