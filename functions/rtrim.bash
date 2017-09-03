#!/bin/bash

###### Remove whitespace at the end of a string
#  @param string $1 string (optional, can also handle STDIN)
#  @return string
#  @example:    echo "That is a sentinece " | rtrim
function rtrim() {
      if [ -n "$1" ]; then
              echo $1 | sed 's/[[:space:]]*$//g'
      else
              cat - | sed 's/[[:space:]]*$//g'
      fi
}
