#!/bin/bash

# Calculates my IP
function myip () {
	# GNU vs BSD hostname
	(hostname -i &> /dev/null)
	if [ $? -eq 0 ]; then
		echo `hostname -i`
	else
		# default to eth0 IP, for MAC
		echo `ipconfig getifaddr en0`
	fi;
}
