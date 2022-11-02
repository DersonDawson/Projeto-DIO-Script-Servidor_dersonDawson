#!/bin/bash

echo "Atualizando servidor..."

apt-get update
apt-get upgrade -y

echo "Instalando Apache ..."

apt-get install apache2 -y

echo "Instalando unzip..."
apt-get install unzip -y

echo "Fazendo download do repositório na pasta /tmp e copiando para servidor web..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/
