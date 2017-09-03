#!/bin/bash

###### check if a remote port is up using dnstools.com
# (i.e. from behind a firewall/proxy)
function cpo() { [[ $# -lt 2 ]] && echo 'need IP and port' && return 2; [[ `wget -q "http://dnstools.com/?count=3&checkp=on&portNum=$2&target=$1&submit=Go\!" -O - |grep -ic "Connected successfully to port $2"` -gt 0 ]] && echo OPEN || echo CLOSED; }
