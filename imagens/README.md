
# Criação das imagens

* Neste diretório temos os arquivos Dockerfile responsáveis pela criação das imagens
* Existe um Makefile para facilitar a criação:
** mostra o help: make help
** Cria todas as imagens para o laboratório: make all
** Remove as imagens criadas e remove imagens nao utilizadas: make clean

# Comando para enviar para o dockerhub
* Envio é opcional: as imagens podem ir para o dockerhub e ai os alunos poderão transferir de la, sem necessidade de criar a imagem localmente
* passos
** logindo no doker hub:
```
docker login
```
** Enviando para o Docker Hub:
```
docker push "nome-da-imagem"
```

# Sugestão
* Periodicamente limpe seu repositorio de imagens (pode ocupar muito espaco em disco sem necessidade), usando o comando:
```
docker image prune -a
``` 
