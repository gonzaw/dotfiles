#!/bin/bash
###### Convert all alphabetic characters converted to uppercase
#  @param string $1|STDIN string
#  @return string
function strtoupper() {
      if [ -n "$1" ]; then
      	echo $1 | tr '[:lower:]' '[:upper:]'
      else
      	cat - | tr '[:lower:]' '[:upper:]'
      fi
}
