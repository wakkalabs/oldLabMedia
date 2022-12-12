#!/bin/bash
IPT="/sbin/iptables"
IPT6="/sbin/ip6tables"


iptables -A INPUT -p udp -m udp --dport 51194 -j ACCEPT
iptables -A FORWARD -i wg0 -j ACCEPT
iptables -A FORWARD -o wg0 -j ACCEPT