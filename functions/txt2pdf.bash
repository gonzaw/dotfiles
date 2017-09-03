#!/bin/bash

##################################################
# Convert text file to pdf			 #
##################################################

# Requires:	sudo apt-get install txt2html python-pisa
function txt2pdf() { xhtml2pdf -b "${1%.*}" < <(txt2html "$1"); }
