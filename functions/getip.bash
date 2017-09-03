#!/bin/bash

###### get IP address of a given interface
# Example: getip lo
# Example: getip eth0	# this is the default
function getip()		{ lynx -dump http://whatismyip.org/; }
