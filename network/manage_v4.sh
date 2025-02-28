#!/bin/bash

cmd=$1
file='/etc/netplan/01-network-manager-all.yaml'
if [[ $UID -ne 0 ]];then

	 echo 'please run as root'
	 exit 1 
fi

if [[ $cmd == 'enable' ]];then

echo 'enabling...'
sed -i  '/dhcp6/a \    addresses:\n    - 192.168.3.98/24\n    routes:\n    - to: default\n      via: 192.168.3.254' $file
sed -i  's/dhcp6: yes/dhcp6: no/g' $file

#chattr -a /etc/resolv.conf
#echo -e  "namserver 1.1.1.1\n$((cat /etc/resolv.conf))" | tee /etc/resolv.conf

netplan apply

fi



if [[ $cmd == 'disable' ]];then

echo 'disabling...'
sed -i '/addresses:/,/via:/d' $file
sed -i  's/dhcp6: no/dhcp6: yes/g' $file
#chattr -a /etc/resolv.conf
#sed -i 's/nameserver 1.1.1.1//g' /etc/resolv.conf
netplan apply
fi 

#chattr +a /etc/resolv.conf
