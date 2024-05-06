help: ## Mostrando o help
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

all: alpine-cliente alpine-ftpd alpine-nginx alpine-roteador alpine-sshd  debian-cliente  ## Cria todas as imagens para o laboratorio

alpine-cliente: ## Criando a imagem para container cliente baseado em alpine
	docker build -t sidneypio/alpine-cliente:latest . -f Dockerfile-alpine-cliente

alpine-ftpd: ## Criando a imagem para servidor ftp baseado em alpine
	docker build -t sidneypio/alpine-ftpd:latest . -f Dockerfile-alpine-ftpd

alpine-nginx: ## Criando a imagem para container nginx baseado em alpine
	docker build -t sidneypio/alpine-nginx:latest . -f Dockerfile-alpine-nginx

alpine-roteador: ## Criando a imagem para container roteador baseado em alpine
	docker build -t sidneypio/alpine-roteador:latest . -f Dockerfile-alpine-roteador

alpine-sshd: ## Criando a imagem para servidor ssh baseado em alpine
	docker build -t sidneypio/alpine-sshd:latest . -f Dockerfile-alpine-sshd

debian-cliente: ## Criando a imagem para container cliente baseado em debian
	docker build -t sidneypio/debian-cliente:latest . -f Dockerfile-debian-cliente 

debian-roteador: ## Criando a imagem para container roteador baseado em debian
	docker build -t sidneypio/debian-roteador:latest . -f Dockerfile-debian-roteador 

debian-inf534: ## Criando a imagem para container a disciplina inf534 baseado em debian
	docker build -t sidneypio/debian-inf534:latest . -f Dockerfile-debian-inf534 

push: ## Envia as imagens para o Docker Hub (opcional)
	docker login
	docker push sidneypio/alpine-cliente:latest
	docker push sidneypio/alpine-ftpd:latest
	docker push sidneypio/alpine-nginx:latest
	docker push sidneypio/alpine-roteador:latest
	docker push sidneypio/alpine-sshd:latest
	docker push sidneypio/debian-cliente:latest
	docker push sidneypio/debian-roteador:latest
	docker push sidneypio/debian-inf534:latest

clean: ## Remove as imagens criadas e remove imagens nao utilizadas
	docker image rm -f sidneypio/alpine-cliente sidneypio/alpine-ftpd sidneypio/alpine-nginx sidneypio/alpine-roteador sidneypio/alpine-sshd sidneypio/debian-cliente sidneypio/debian-roteador sidneypio/debian-sshd
	docker image prune -a -f
