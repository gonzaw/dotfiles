#!/bin/bash

function aptg()		# debian specific.
{
    if [ $# -lt 1 ] || [ $# -gt 1 ]; then
        echo "search debian package list"
        echo "usage: aptg [program/keyword]"
    else
        apt-cache search $1 | sort | less
    fi
}
