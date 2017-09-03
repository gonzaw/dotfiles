#!/bin/bash

# Compatability options
# The BSD sed on mac uses -E, while the GNU one on linux uses -r
(echo '' | sed -r /GG/g &> /dev/null)
if [ $? -eq "0" ]; then
	export SED_EXT='-r'
else
	export SED_EXT='-E'
fi;

# GNU vs BSD ls for color
(ls --color=tty &> /dev/null)
if [ $? -eq 0 ]; then
	export LS_COLOR='--color=tty'
else
	export LS_COLOR='-G'
fi;

#GNU vs BSD top command line arguments
# Delay updates by 10 sec and sort by CPU
(man top 2>&1 | grep Linux> /dev/null)
if [ $? -eq 0 ]; then
	export TOP_OPTIONS='-c -d10'
else
	export TOP_OPTIONS='-s10 -ocpu'
fi;

# Options
shopt -s checkwinsize
shopt -s histappend # Append to history rather than overwrite


#### Source group
GROUP_FILE="$HOME/.bash/group/group.bash"
if [ -f $GROUP_FILE ]
then
	source $GROUP_FILE
fi;

##### Source the correct per-host file
PERHOST_FILE="$HOME/.bash/group/hostnames/$HOSTNAME_SCRUB.bash"
if [ -f $PERHOST_FILE ]
then
	source $PERHOST_FILE
fi;


# remove duplicate path entries and preserve PATH order
#export PATH=$(echo $PATH | awk -F: '
#{ start=0; for (i = 1; i <= NF; i++) if (!($i in arr) && $i) {if (start!=0) printf ":";start=1; printf "%s", $i;arr[$i]}; }
#END { printf "\n"; } ')
