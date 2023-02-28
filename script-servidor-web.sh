#!/bin/bash

echo "Atualizando o servidor..."

apt update -y
apt upgrade -y

echo "Instalando o apache2..."

apt install apache2

echo "Instalando o unzip..."

apt install unzip

echo "Baixando a aplicação no diretório /tmp..."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Copiando arquivos da aplicação no diretório padrão do apache"

rm /var/www/html/index.html
unzip main.zip
cd linux-site-dio-main
cp * /var/www/html



