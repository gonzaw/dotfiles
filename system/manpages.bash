#!/bin/bash

# autocomplete man commands
function listmans_raw() {
	local manpath_func
	which manpath &> /dev/null
	if [ $? -eq 0 ]; then
		manpath_func='manpath'
	else
		manpath_func='man -W 2> /dev/null'
	fi;
	for dir in $($manpath_func | /usr/bin/tr ':' '\n'); do
		find "${dir}" ! -type d -name "*.*" 2>/dev/null | sed -e 's#/.*/##g' | sed -e 's#.[^.]*$##g' | sed -e 's#\.[0123456789].*##g'
	done
}
function regen_man_args() {
	listmans_raw | sort -u > $MAN_AUTOCOMP_FILE
}
function listmans() {
	if [ ! -f $MAN_AUTOCOMP_FILE ]; then
		regen_man_args
	fi;
	cat $MAN_AUTOCOMP_FILE
}
