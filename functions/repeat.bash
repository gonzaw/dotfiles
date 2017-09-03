#!/bin/bash

# Repeat a command N times. You can do something like
# repeat 3 echo 'hi'
function repeat()
{
	local i max
	max=$1; shift;
	for ((i=1; i <= max ; i++)); do
		eval "$@";
	done
}
