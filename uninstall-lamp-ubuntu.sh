#!/bin/bash

#######################################
# Bash script to uninstall an LAMP stack in ubuntu
# Author: Subhash (serverkaka.com)

# Check if running as root
if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

# Uninstall APache
service apache2 stop
apt-get remove apache2 apache2-doc apache2-mpm-prefork apache2-utils libexpat1 ssl-cert -y

# Uninstall PHP
sudo apt-get remove libapache2-mod-php5 php5 php5-common php5-curl php5-dev php5-gd php5-idn php-pear php5-imagick php5-mcrypt php5-mysql php5-ps php5-pspell php5-recode php5-xsl -y

# Uninstall MySQL database server
service mysql stop
apt-get remove mysql-server -y
rm -rf /var/lib/mysql && rm -rf /var/log/mysqld.log && rm -rf /etc/my.cnf

# Uninstall PhpMyAdmin
sudo apt-get remove phpmyadmin -y

# Clean unused File
apt-get autoremove -y
