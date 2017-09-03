#!/bin/bash

###### myip - finds your current IP if your connected to the internet
function myip_external()
{
	lynx -dump -hiddenlinks=ignore -nolist http://checkip.dyndns.org:8245/ | awk '{ print $4 }'
}
