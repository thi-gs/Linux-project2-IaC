#!/bin/bash

echo "Updating the server..."

apt-get update 
apt-get upgrade -y

echo "Installing apache2..."

apt-get install apache2 -y

echo "Installing unzip..."

apt-get install unzip -y

echo "Installing application on folder /tmp..."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Copying application's files on default apache's folder"

rm /var/www/html/index.html
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html

echo "The script is Done!!"

