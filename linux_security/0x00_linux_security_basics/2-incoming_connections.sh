#!/bin/bash
iptables -A INPUT -p tcp --dport 80 -j ACCEPT
echo -e "Rules update\nRules updated (v6)"