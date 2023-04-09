
# Criação das imagens

* Neste diretório temos os arquivos Dockerfile responsáveis pela criação das imagens utilizadas na disciplina INF534
* É uma tarefa opcional, pois as imagens já estão disponíveis no DockerHub, sem necessidade de criar a imagem localmente
* Existe um Makefile para facilitar a criação:
  * mostra o help: make help
  * Cria todas as imagens para o laboratório: make all
  * Remove as imagens criadas e remove imagens nao utilizadas: make clean
* Para simplificar, criei 1 imagem debian-inf534 com todos os pacotes que serao utilizados na disciplina, tanto para clientes, roteadores e servidores (exceto DNS). Assim, dependendo de como essa imagem for inicializada, ela poderá ser um cliente, um roteador, um servidor web, um servidor ftp ou um servidor ssh.
* Tradicionalmente instalamos apenas 1 unico servico no docker, mas optei por fazer simplificar a compreensao. Em producao, usem apenas 1 servico, simplificando o gerenciamento e atualizações.
* Para o servidor de DNS, criamos uma imagem utilizando como base o "Alpine Linux" e rodando apenas o "servidor bind (dns)"

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
