help: ## Mostra a ajuda
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

liga: ## Ativa os containers, ligando o laboratorio
	docker-compose up -d
prepara:  ## Prepara os containers, mas nao coloca em execucao
	docker-compose build
desliga:  ## Remove containers e redes, desligando o laboratorio. Os dados nao persistentes serao perdidos
	docker-compose down --remove-orphans