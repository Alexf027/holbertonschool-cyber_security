#!/bin/bash
grep '^ID' /etc/os-release | head -n 1 | cut -d= -f2 | tr -d '"' | sed 's/.*/\u&/'
