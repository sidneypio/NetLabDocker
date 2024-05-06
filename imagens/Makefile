help: ## Mostrando o help
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

all: debian-inf534 bind-inf534 sensor-inf534 ## Criando todas as imagens necessarias para inf534

debian-inf534: ## Criando a imagem para container da disciplina inf534 baseado em debian 
	docker build -t sidneypio/debian-inf534:latest . -f Dockerfile-debian-inf534

bind-inf534: ## Criando a imagem para container bind da disciplina inf534
	docker build -t sidneypio/bind-inf534:latest . -f Dockerfile-bind-inf534

sensor-inf534: ## Criando a imagem para um simulador de sensor de temperatura/umidade para a disciplina inf534
	docker build -t sidneypio/sensor-inf534:latest . -f Dockerfile-sensor-inf534

monitor-inf534: ## Criando a imagem para monitorar os dados de temperatura/umidade para a disciplina inf534
	docker build -t sidneypio/monitor-inf534:latest . -f Dockerfile-monitor-inf534


push: ## Envia as imagens para o Docker Hub (opcional)
	docker login
	docker push sidneypio/debian-inf534:latest
	docker push sidneypio/bind-inf534:latest
	docker push sidneypio/sensor-inf534:latest

clean: ## Remove as imagens criadas e remove imagens nao utilizadas
	docker image rm -f sidneypio/debian-inf534
	docker image rm -f sidneypio/bind-inf534
	docker image rm -f sidneypio/sensor-inf534
	docker image prune -a -f

debian-inf534-multi-arch: ## Criando a imagem para container da disciplina inf534 baseado em debian para arm64/v8 e amd64
	docker buildx build --platform linux/arm64/v8,linux/amd64 --tag sidneypio/debian-inf534:latest --push . -f Dockerfile-debian-inf534
