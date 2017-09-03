#!/bin/bash
##################################################
# Surround lines with quotes (useful in pipes)	 #
# - from mervTormel				 #
##################################################

function enquote() { /bin/sed 's/^/"/;s/$/"/' ; }
