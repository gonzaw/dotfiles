#!/bin/bash

###### online check
function connected() { ping -c1 -w2 google.com > /dev/null 2>&1; }

function connected_() { 
	rm -f /tmp/connect; 
	http_proxy='http://a.b.c.d:8080' wget -q -O /tmp/connect http://www.google.com; 
	if [[ -s /tmp/connect ]]; then 
		return 0; 
	else return 1; 
	fi; 
}
