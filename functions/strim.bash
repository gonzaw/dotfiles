#!/bin/bash
###### Cut a string after X chars and append three points
# string strim( string string [, int length ] )
function strim() {
      local string="$1"
      local length=${2:-30}
      [ "${#string}" -gt ${length} ] && string="${string:0:${length}}..."
      echo $string
}
