import paho.mqtt.client as mqtt
import json

# Configurações do servidor MQTT
broker_address = "10.10.100.50"
port = 1883
topic = "casa/jardim/sensor"

# Função de callback chamada quando uma nova mensagem é recebida
def on_message(client, userdata, message):
    payload = json.loads(message.payload.decode("utf-8"))
    temperatura = payload["temperatura"]
    umidade = payload["umidade"]
    print(f"Nova leitura - Temperatura: {temperatura}°C, Umidade: {umidade}%")

# Função de callback chamada quando a conexão com o servidor MQTT é estabelecida
def on_connect(client, userdata, flags, rc):
    print("Conectado ao servidor MQTT com código de resultado: " + str(rc))
    client.subscribe(topic)
    print(f"Inscrito no tópico '{topic}'")

# Inicialização do cliente MQTT
client = mqtt.Client()

# Definição das funções de callback
client.on_connect = on_connect
client.on_message = on_message

# Conexão ao servidor MQTT
client.connect(broker_address, port=port)

# Mantém o cliente MQTT em execução para receber mensagens
client.loop_forever()

