#!/bin/bash

echo "Atualizando server..."
sudo apt-get update
sudo apt-get upgrade -y

echo "Instalando dependencias..."
sudo apt-get install apache2 -y
sudo apt-get install unzip -y

echo "Baixando repositorio..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando..."
unzip main.zip

echo "Copiando arquivos..."
cd linux-site-dio-main
cp -R * /var/www/html/
