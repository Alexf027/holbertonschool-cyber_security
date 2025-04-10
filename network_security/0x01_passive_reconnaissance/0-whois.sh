#!/bin/bash
whois $1 | awk -F: '/Registrant|Admin|Tech/ &&  $0 ~ /:/ {sub(/^ +/, "", $2); print $1 "," substr($0, index($0, index($0 ":")+2)}' > "$1.csv"
