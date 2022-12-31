#/usr/bin/sh
sudo su

sysctl net.ipv4.ip_forward=1

ip link set dev enp0s3 up
ip address add 100.3.0.1/24 dev enp0s3

ip link set dev enp0s8 up
ip address add 192.168.1.254/24 dev enp0s8

ip link set dev enp0s9 up
ip address add 100.3.21.254/24 dev enp0s9

ip route add 100.3.0.3/24 via 100.3.0.1
ip route add 100.3.0.2/24 via 100.3.0.1


iptables -A INPUT -p tcp -i enp0s8 --dports 80,443 -j ACCEPT
iptables -A INPUT -p tcp -i enp0s9 --dports 80,443 -j ACCEPT
iptables -A INPUT -p tcp -i enp0s3 --dports 80,443 -j ACCEPT
iptables -A INPUT -p udp -i enp0s8 --dports 53,67,68 -j ACCEPT
iptables -t nat -A POSTROUTING -o enp0s3 -j MASQUERADE

iptables -P INPUT DROP
iptables -P OUTPUT DROP
iptables -P FORWARD DROP
