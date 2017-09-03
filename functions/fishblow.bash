#!/bin/bash

# Simple blowfish encryption
function blow()
{
	[ -z "$1" ] && echo 'Encrypt: blow FILE' && return 1
	openssl bf-cbc -salt -in "$1" -out "$1.bf"
}
function fish()
{
	test -z "$1" -o -z "$2" && echo \
	'Decrypt: fish INFILE OUTFILE' && return 1
	openssl bf-cbc -d -salt -in "$1" -out "$2"
}
