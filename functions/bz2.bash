#!/bin/bash
# Compress with tar + bzip2
function bz2 () {
	tar cvpjf $1.tar.bz2 $1
}
