#!/usr/bin/sh

sudo su

ip link set dev enp0s3 up
ip address add 100.3.21.1/24 dev enp0s3


apt install dnsmasq
nano /etc/dnsmasq.conf

apt install apache2
mkdir /var/www/kaycee/
cd /var/www/kaycee/
nano index.html.
cd /etc/apache2/sites-available/
cp 000-default.conf kaycee.conf
nano kaycee.conf
a2ensite kaycee.conf
service apache2 reload

