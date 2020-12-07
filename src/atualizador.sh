#!/bin/bash

echo Atualizando o sistema...
sudo apt-get update > log.txt
sudo apt update >> log.txt

echo Instalando atualizacoes...
sudo apt-get upgrade >> log.txt
sudo apt upgrade >> log.txt

echo Limpando cache...
sudo apt-get autoclean >> log.txt
sudo apt autoclean >> log.txt

echo Limpando pacotes...
sudo apt-get autoremove >> log.txt
sudo apt autoremove >> log.txt

echo Limpando pacotes persistentes...
sudo apt-get autoremove --purge >> log.txt
sudo apt autoremove --purge >> log.txt

echo Atualizado, verifique log.txt

# shell script para atulizar os pacotes do sistema linux baseado em ubuntu
# permissoes para executar o arquivo (chmod +x atualizador.sh)
# Autor: @Paulo https://github.com/alpdias