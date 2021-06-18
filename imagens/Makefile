help: ## Mostrando o help
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

all: debian-inf534

debian-inf534: ## Criando a imagem para container a disciplina inf534 baseado em debian
	docker build -t sidneypio/debian-inf534:latest . -f Dockerfile-debian-inf534 

push: ## Envia as imagens para o Docker Hub (opcional)
	docker login
	docker push sidneypio/debian-inf534:latest

clean: ## Remove as imagens criadas e remove imagens nao utilizadas
	docker image rm -f sidneypio/debian-inf534
	docker image prune -a -f
