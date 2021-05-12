help: ## Mostrando o help
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

all: debian-cliente alpine-roteador debian-apache-php alpine-nginx ## Cria todas as imagens para o laboratorio

debian-cliente: ## Criando a imagem para container cliente baseado em debian
	docker build -t sidneypio/debian-cliente:latest . -f Dockerfile-debian-cliente 

alpine-cliente: ## Criando a imagem para container cliente baseado em alpine
	docker build -t sidneypio/alpine-cliente:latest . -f Dockerfile-alpine-cliente

alpine-roteador: ## Criando a imagem para container roteador baseado em alpine
	docker build -t sidneypio/alpine-roteador:latest . -f Dockerfile-alpine-roteador

alpine-nginx: ## Criando a imagem para container nginx baseado em alpine
	docker build -t sidneypio/alpine-nginx:latest . -f Dockerfile-alpine-nginx

debian-apache-php: ## Criando a imagem para container com servidor apache+php baseado em debian
	docker build -t sidneypio/debian-apache-php:latest . -f Dockerfile-debian-apache-php 

debian-nginx: ## Criando a imagem para container com servidor nginx baseado em debian (nao utilizado no momento)
	docker build -t sidneypio/debian-nginx:latest . -f Dockerfile-debian-nginx 

debian-roteador: ## Criando a imagem para container roteador baseado em debian (nao utilizado no momento)
	docker build -t sidneypio/debian-roteador:latest . -f Dockerfile-debian-roteador

push: ## Envia as imagens para o Docker Hub (opcional)
	docker login
	docker push sidneypio/debian-cliente:latest
	docker push sidneypio/alpine-cliente:latest
	docker push sidneypio/alpine-roteador:latest
	docker push sidneypio/alpine-nginx:latest
	docker push sidneypio/debian-apache-php:latest

clean: ## Remove as imagens criadas e remove imagens nao utilizadas
	docker image rm -f sidneypio/debian-cliente sidneypio/alpine-cliente sidneypio/alpine-roteador sidneypio/alpine-nginx sidneypio/debian-apache-php
	docker image prune -a -f
