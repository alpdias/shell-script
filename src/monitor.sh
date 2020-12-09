#!/bin/bash

echo "Serviço:"
read servico

while true; do

status=`service $servico status | grep "Active" | cut  -d":" -f2 | cut -d"(" -f1 | tr -d " "`

if [[ $status == "active" ]]; then
	echo "Serviço Ativo"
	sleep 2
else
	echo "Serviço Inativo"
	sleep 2
fi

done

# shell script para monitorar o status de serviços 
# permissões para executar o arquivo (chmod +x site-on.sh)
# Autor: @Paulo https://github.com/alpdias

