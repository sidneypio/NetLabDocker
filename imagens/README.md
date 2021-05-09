
# Criação das imagens

* Neste diretório temos os arquivos Dockerfile responsáveis pela criação das imagens
* Tarefa opcional, pois as imagens já estão disponíveis no DockerHub, sem necessidade de criar a imagem localmente
* Existe um Makefile para facilitar a criação:
  * mostra o help: make help
  * Cria todas as imagens para o laboratório: make all
  * Remove as imagens criadas e remove imagens nao utilizadas: make clean

# Comando para enviar para o dockerhub
Apenas para quem deseja continuar o desenvolvimento das imagens e compartilhar com outras pessoas.

## Passos
Logando no "Doker hub":
```
docker login
```
Enviando para o Docker Hub:
```
docker push "nome-da-imagem"
```

# Sugestão
Periodicamente limpe seu repositorio de imagens (pode ocupar muito espaco em disco sem necessidade), usando o comando:
```
docker image prune -a
``` 
