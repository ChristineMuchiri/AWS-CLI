#!/bin/bash

echo "This scripts sets up a lamp server on an Amazon Linux 2"

sudo yum update -y
sudo amazon-linux-extras install -y lamp-mariadb10.2-php7.2 php7.2

# Checking version of Amazon Linux
cat /etc/system-release

sudo yum install -y httpd mariadb-server

# Start Apache web server
sudo systemctl start httpd
sudo systemctl is-enabled httpd

# Set file permissions
sudo usermod -a -G apache ec2-user

# Change group ownership
sudo chown -R ec2-user:apache /var/www
sudo chmod 2775 /var/www && find /var/www -type d -exec sudo chmod 2775 {} \;
find /var/www -type f -exec sudo chmod 0664 {} \;

# SECURE DATABASE SERVER
sudo systemctl start mariadb
sudo mysql_secure_installation
