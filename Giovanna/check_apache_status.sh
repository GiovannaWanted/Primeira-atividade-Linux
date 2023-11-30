
TIMESTAMP=$(date +"%Y-%m-%d %H:%M:%S")

SERVICE_NAME="Apache"

STATUS=$(systemctl is-active httpd)


if [ "$STATUS" = "active" ]; then
    MESSAGE="Online"
    OUTPUT_FILE="/home/nfs-compartilhado/Giovanna/servico_online_${TIMESTAMP}.txt"
else
    MESSAGE="Offline"
    OUTPUT_FILE="/home/nfs-compartilhado/Giovanna/servico_offline_${TIMESTAMP}.txt"
fi

echo "Data/Hora: ${TIMESTAMP}" >> "${OUTPUT_FILE}"
echo "Nome do Serviço: ${SERVICE_NAME}" >> "${OUTPUT_FILE}"
echo "Status: ${STATUS}" >> "${OUTPUT_FILE}"
echo "Mensagem: ${MESSAGE}" >> "${OUTPUT_FILE}"


