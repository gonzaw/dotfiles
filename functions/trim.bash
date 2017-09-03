#!/bin/bash
###### Remove whitespace at the beginning and end of a string
#  @param string $1 string (optional, can also handle STDIN)
#  @return string
#  @example:    echo " That is a sentinece " | trim
function trim() {
      if [ -n "$1" ]; then
              echo $1 | sed 's/^[[:space:]]*//g' | sed 's/[[:space:]]*$//g'
      else
              cat - | sed 's/^[[:space:]]*//g' | sed 's/[[:space:]]*$//g'
      fi
}
