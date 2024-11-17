#!/bin/bash
echo "$1"
if [ "$1" = "on" ]; then
	echo "on"
	sudo echo -e '# Dynamic resolv.conf(5) file for glibc resolver(3) generated by resolvconf(8)\n#     DO NOT EDIT THIS FILE BY HAND -- YOUR CHANGES WILL BE OVERWRITTEN\n#nameserver 127.0.1.1\nnameserver 178.22.122.100\nnameserver 185.51.200.2' | sudo tee /etc/resolve.conf
fi
if [ "$1" = "off" ]; then
	echo "off"
	sudo echo -e '# Dynamic resolv.conf(5) file for glibc resolver(3) generated by resolvconf(8)\n#     DO NOT EDIT THIS FILE BY HAND -- YOUR CHANGES WILL BE OVERWRITTEN\nnameserver 127.0.1.1' | sudo tee /etc/resolve.conf
fi
