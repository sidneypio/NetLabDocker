import paho.mqtt.client as mqtt
import json
import time
import random

# Configurações do servidor MQTT
broker_address = "10.10.100.50"
port = 1883
topic = "casa/jardim/sensor"

# Função para simular os dados de temperatura e umidade
def simular_dados():
    temperatura = round(random.uniform(20, 30), 2)
    umidade = round(random.uniform(40, 60), 2)
    return temperatura, umidade

# Função de callback chamada quando a conexão com o servidor MQTT é estabelecida
def on_connect(client, userdata, flags, rc):
    print("Conectado ao servidor MQTT com código de resultado: " + str(rc))

# Inicialização do cliente MQTT
client = mqtt.Client()

# Definição das funções de callback
client.on_connect = on_connect

# Conexão ao servidor MQTT
client.connect(broker_address, port=port)

# Loop principal
while True:
    temperatura, umidade = simular_dados()
    dados = {"temperatura": temperatura, "umidade": umidade}
    mensagem = json.dumps(dados)
    client.publish(topic, payload=mensagem, qos=0)
    print("Mensagem publicada: " + mensagem)
    time.sleep(30)  # Espera por 30 segundos antes de enviar os próximos dados
