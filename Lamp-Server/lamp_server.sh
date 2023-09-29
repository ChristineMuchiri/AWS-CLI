#!/bin/bash

echo "This scripts sets up a lamp server on an Ubuntu VM"

sudo apt-get update
sudo apt-get install apache2 #installing Apache
sudo apt-get install mysql-server #installing MySQL
sudo mysql_secure_installation #Secure MySQL installation
sudo apt-get install php libapache2-mod-php php-mysql  #installing PHP and required extensions

