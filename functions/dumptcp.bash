#!/bin/bash
function dumptcp() {
	# TCPDUMP all the data on port $1 into rotated files /tmp/results. Note,
	# this can get VERY large
	sudo /usr/sbin/tcpdump -i any -s0 tcp port $1 -A -w /tmp/results -C 100
}
