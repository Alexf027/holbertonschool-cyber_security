#!/bin/bash
whois $1 | awk -F':' '/^(Registrant|Admin|Tech) (Organization|State\/Province|Country|Email)/ {key=$1; for(i=2;i<NF;i++) key=key":"$i; sub(/^ /, "", $NF); print key "," $NF}' > $1.csv
