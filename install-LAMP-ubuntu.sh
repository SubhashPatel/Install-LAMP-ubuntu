#!/bin/sh

#######################################
# Bash script to install an LAMP stack in ubuntu
# Author: Subhash (serverkaka.com)

# Update system
sudo apt-get update -y

## Install APache
sudo apt-get install apache2 apache2-doc apache2-mpm-prefork apache2-utils libexpat1 ssl-cert -y

## Install PHP
sudo apt-get install libapache2-mod-php5 php5 php5-common php5-curl php5-dev php5-gd php5-idn php-pear php5-imagick php5-mcrypt php5-mysql php5-ps php5-pspell php5-recode php5-xsl -y

## Install MySql
sudo apt-get install mysql-server mysql-client libmysqlclient15.dev -y

# Enabling Mod Rewrite
sudo a2enmod rewrite
sudo php5enmod mcrypt

## Install PhpMyAdmin
sudo apt-get install phpmyadmin -y

# Set Permissions
sudo chown -R www-data:www-data /var/www

# Restart Apache
sudo service apache2 restart
