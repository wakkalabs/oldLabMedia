#!/bin/bash
IPT="/sbin/iptables"
IPT6="/sbin/ip6tables"

#IN_FACE="eno1"                   # NIC connected to the internet
#WG_FACE="wg0"                    # WG NIC
#SUB_NET="10.13.13.0/24"            # WG IPv4 sub/net aka CIDR
#WG_PORT="51194"                  # WG udp port
#SUB_NET_6="fd42:42:42:42::/112"  # WG IPv6 sub/net

iptables -D INPUT -p udp -m udp --dport 51194 -j ACCEPT
iptables -D FORWARD -i wg0 -j ACCEPT
iptables -D FORWARD -o wg0 -j ACCEPT