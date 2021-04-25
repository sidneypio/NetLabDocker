# NetLabDocker - Laboratório de redes usando docker
* A ideia é criar um ambiente usando docker para estudo de protocolos de rede


# Estrutura
## Imagens
* Diretório para construir as imagens;
* A construção de imagens é opcional, pois tenho uma versão das imagens geradas no Docker Hub (https://hub.docker.com/)

## lab-inicial
* Exemplo de uma topologia simples com apenas 1 roteador;
* bom para entender o funcionamento do laboratório, sem a complexidade da topologia

## lab
* Topologia mais elaborada,  com dois containers cliente, 4 roteadores e 4 servidores (1 nginx, 2 apache e 1 mosquitto)
