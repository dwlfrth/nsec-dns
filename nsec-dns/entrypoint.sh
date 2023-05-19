#!/bin/sh

# Create TUN Device
mkdir -p /dev/net
[[ -c /dev/net/tun ]] || mknod -m 0666 /dev/net/tun c 10 200

openvpn --config /vpn.conf --user nobody --group nobody --daemon; dnsmasq -d -C /dnsmasq.conf
