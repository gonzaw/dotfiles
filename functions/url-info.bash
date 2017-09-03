#!/bin/bash

###### show Url information
# Usage:	url-info "ur"
# This script is part of nixCraft shell script collection (NSSC)
# Visit http://bash.cyberciti.biz/ for more information.
# Modified by Silviu Silaghi (http://docs.opensourcesolutions.ro) to handle
# more ip adresses on the domains on which this is available (eg google.com or yahoo.com)
# Last updated on Sep/06/2010
function url-info()
{
	doms=$@
	if [ $# -eq 0 ]; then
		echo -e "No domain given\nTry $0 domain.com domain2.org anyotherdomain.net"
	fi;
	for i in $doms; do
		_ip=$(host $i|grep 'has address'|awk {'print $4'})
		if [ "$_ip" == "" ]; then
			echo -e "\nERROR: $i DNS error or not a valid domain\n"
			continue
		fi;
		ip=`echo ${_ip[*]}|tr " " "|"`
		echo -e "\nInformation for domain: $i [ $ip ]\nQuerying individual IPs"
		for j in ${_ip[*]}; do
			echo -e "\n$j results:"
			whois $j |egrep -w 'OrgName:|City:|Country:|OriginAS:|NetRange:'
		done
	done
}
