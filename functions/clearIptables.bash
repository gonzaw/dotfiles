#!/bin/bash

###### clear iptables rules safely
function clearIptables()
{
	iptables -P INPUT ACCEPT; iptables -P FORWARD ACCEPT; iptables -P OUTPUT ACCEPT; iptables -F; iptables -X; iptables -L
}
