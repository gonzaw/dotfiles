#!/bin/bash
###### Convert the first letter into uppercase letters
function ucfirst() {
      if [ -n "$1" ]; then
          perl -e 'print ucfirst('$1')'
      else
          cat - | perl -ne 'print ucfirst($_)'
      fi
}
