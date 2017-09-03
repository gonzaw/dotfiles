#!/bin/bash
###### Converts first letter of each word within a string into an uppercase, all other to lowercase
#     string ucwords( string string )
function ucwords() {
      local string="$*"
      for word in $string; do
          # Get the first character with cut and convert them into uppercase.
          local first="$( echo $word | cut -c1 | tr '[:lower:]' '[:upper:]' )"
          # Convert the rest of the word into lowercase and append them to the first character.
          word="$first$( echo $word | cut -c2-${#word} | tr '[:upper:]' '[:lower:]' )"
          # Put together the sentence.
          local phrase="$phrase $word"
      done
      echo "$phrase"
}
