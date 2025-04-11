#!/bin/bash
whois $1 | awk '/^(Registrant|Admin|Tech) (Organization|State\/Province|Country|Email)/ {key=$1 " " $2; sub(/.*: /, "", $0); print key "," $0}' > $1.csv
