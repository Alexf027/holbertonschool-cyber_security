#!/bin/bash
whois $1 | awk -F':' '/(Registrant|Admin|Tech) (Organization|State\/Province|Country|Email)/ {sub(/^ +/, "", $2); print $1 "," $2}' > "$1.csv"}
