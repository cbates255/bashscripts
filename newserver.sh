#!/bin/bash

sudo yum update
sudo yum install httpd
sudo systemctl start httpd

echo "This is a test site" >> /var/www/html/index.html 
