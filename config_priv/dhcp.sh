#/usr/bin/sh
sudo su

apt install isc-dhcp-server

ip link set dev enp0s3 up
ip address add 192.168.1.4/24 dev enp0s3

