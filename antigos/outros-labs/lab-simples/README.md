# Laboratório de redes usando docker: lab-simples

* Exemplo de uma topologia simples com apenas 1 roteador
* bom para entender o funcionamento do laboratório, sem a complexidade da topologia
* para executar, basta digitar:
```
make liga
```
* apos a inicializacao das maquinas, rodar o script ajusta-rotas.sh 
* para testar, rodar o script testa-ambiente.sh
* para executar comandos no container (por exemplo cliente1), pode-se usar o comando:
```
docker exec -it cliente1 bash
```
* para desligar o "laboratorio", utilizar "make desliga"


