#!/bin/bash

# Grep for a process while at the same time ignoring the grep that
# you're running. For example
# 	ps awxxx | grep java
# will show "grep java", which is probably not what you want
function psgrep(){
	local OUTFILE=`mktemp /tmp/psgrep.XXXXX`
	ps awxxx > $OUTFILE
	grep $@ $OUTFILE
	rm $OUTFILE
}
