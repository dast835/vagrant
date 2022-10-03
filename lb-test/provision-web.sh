#!/bin/bash
sudo apt update
sudo apt install -y nginx-full
sudo systemctl stop nginx
sudo cp /vagrant/web-nginx-config /etc/nginx/sites-enabled/default
sudo systemctl start nginx
sudo hostname >> /var/www/html/index.html