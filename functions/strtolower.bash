#!/bin/bash
###### Convert all alphabetic characters to lowercase
#  @param string $1|STDIN string
#  @return string
function strtolower() {
      if [ -n "$1" ]; then
      	echo $1 | tr '[:upper:]' '[:lower:]'
      else
      	cat - | tr '[:upper:]' '[:lower:]'
      fi
}
