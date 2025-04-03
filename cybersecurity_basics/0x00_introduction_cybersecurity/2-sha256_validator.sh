#!/bin/bash
echo "$2  $1" > tmp
sha256sum -c tmp | grep ': OK'
