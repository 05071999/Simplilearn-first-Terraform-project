#! /bin/bash
apt install wget httpd -y
systemctl start htppd
systremctl enable httpd
wget https://www.toolplate.com/zip-templates/2117_infinite_loop.zip
unzip -o 2117_infinite_loop.zip
cp -r 2117_infinite_loop/* v/ar/www/ftm;/
systemctl restart   htppd
