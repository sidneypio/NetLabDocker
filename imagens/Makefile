help: ## Mostrando o help
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

all: debian-inf534 alpine-bind ## Criando todas as imagens necessarias para inf534

debian-inf534: ## Criando a imagem para container da disciplina inf534 baseado em debian
	docker build -t sidneypio/debian-inf534:latest . -f Dockerfile-debian-inf534 

alpine-bind: ## Criando a imagem para container bind da disciplina inf534 
	docker build -t sidneypio/alpine-bind:latest . -f Dockerfile-alpine-bind

push: ## Envia as imagens para o Docker Hub (opcional)
	docker login
	docker push sidneypio/debian-inf534:latest
	docker push sidneypio/alpine-bind:latest

clean: ## Remove as imagens criadas e remove imagens nao utilizadas
	docker image rm -f sidneypio/debian-inf534
	docker image rm -f sidneypio/alpine-bind
	docker image prune -a -f
