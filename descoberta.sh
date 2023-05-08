# Obtém o nome da rede Wi-Fi atual
SSID=$(iwconfig $INTERFACE | grep 'ESSID' | awk '{print $4}' | cut -d'"' -f 2)

# Obtém o endereço IP da interface Wi-Fi
IP=$(ifconfig $INTERFACE | grep 'inet ' | awk '{print $2}')

# Obtém o endereço MAC da interface Wi-Fi
MAC=$(ifconfig $INTERFACE | grep -i hwaddr | awk '{print $NF}')

# Obtém o tipo de criptografia da rede Wi-Fi
ENCRYPTION=$(iwconfig $INTERFACE | grep 'Encryption' | awk '{print $2}')

# Obtém a tabela ARP do sistema
ARP=$(arp -a)

# Imprime as informações obtidas
echo "Nome da rede Wi-Fi: $SSID"
echo "Endereço IP da interface Wi-Fi: $IP"
echo "Endereço MAC da interface Wi-Fi: $MAC"
echo "Tipo de criptografia: $ENCRYPTION"
echo "Tabela ARP:"
echo "$ARP"
