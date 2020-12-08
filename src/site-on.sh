#!/bin/bash

echo "Endereço para teste:"
read site

ping -c 1 $site > log.txt

ip=`cat log.txt | grep "icmp_seq" | cut -d"(" -f2 | cut -d")" -f1`
echo "Endereço IP:" $ip

host=`cat log.txt | grep "received" | cut -d"," -f2`
echo "Host:" $host

# shell script para teste de conexão
# permissões para executar o arquivo (chmod +x site-on.sh)
# Autor: @Paulo https://github.com/alpdias





