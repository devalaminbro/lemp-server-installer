#!/bin/bash

# Server Setup Script for Ubuntu/Debian
# Installs Nginx, MySQL, PHP (LEMP Stack) automatically.
# Author: Sheikh Alamin

# 1. Update System
echo "Updating system repositories..."
sudo apt update && sudo apt upgrade -y

# 2. Install Nginx Web Server
echo "Installing Nginx..."
sudo apt install nginx -y
sudo systemctl start nginx
sudo systemctl enable nginx

# 3. Install MySQL Database Server
echo "Installing MariaDB Server..."
sudo apt install mariadb-server -y
sudo systemctl start mariadb
sudo systemctl enable mariadb

# 4. Install PHP (Latest Version)
echo "Installing PHP and extensions..."
sudo apt install php-fpm php-mysql php-cli php-curl php-xml php-mbstring -y

# 5. Final Check
echo "------------------------------------------------"
echo "Installation Complete!"
echo "Nginx Status: $(systemctl is-active nginx)"
echo "PHP Version: $(php -v | head -n 1)"
echo "------------------------------------------------"
