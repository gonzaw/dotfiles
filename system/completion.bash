#!/bin/bash
# Auto completion of various programs
complete -cf sudo
complete -cf which

# Autocomplete SSH commands
complete -W "$(echo `cat ~/.bash_history | egrep '^ssh ' | sort | uniq | sed 's/^ssh //'`;)" ssh

# Manpages
complete -W "$(listmans)" man
