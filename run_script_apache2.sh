#!/bin/bash

# Script de Provisionamento de um Servidor Web (Apache)
run_script() {
  sudo apt-get update -y
  sudo apt-get install apache2 -y
  sudo apt-get install git -y
  sudo rm /var/www/html/*
  sudo git clone https://github.com/denilsonbonatti/linux-site-dio.git
  sudo cp -R linux-site-dio/. /var/www/html/
}

run_script

echo "Provisionamento concluído."
