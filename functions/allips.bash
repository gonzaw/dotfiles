#!/bin/bash

###### get all IPs via ifconfig
function allips()
{
	ifconfig | awk '/inet / {sub(/addr:/, "", $2); print $2}'
}
