#!/bin/bash
sudo apt update
sudo apt install -y nginx-full
sudo systemctl stop nginx 
sudo cp /vagrant/lb-nginx-config /etc/nginx/sites-enabled/default
sudo systemctl start nginx