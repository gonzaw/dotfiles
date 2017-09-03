#!/bin/bash

###### PROMPT ######
# Set up the prompt colors - TODO: Cambiar cuando tenga ese archivo
#source $HOME/.bash/term_colors
PROMPT_COLOR=$G
if [ ${UID} -eq 0 ]; then
	PROMPT_COLOR=$R ### root is a red color prompt
fi;

# I like this prompt for a few reasons:
# (1) The time shows when each command was executed, when I get back to my terminal
# (2) Git information really important for git users
# (3) Prompt color is red if I'm root
# (4) The last part of the prompt can copy/paste directly into an SCP command
# (5) Color highlight out the current directory because it's important
# (6) The export PS1 is simple to understand!
# (7) If the prev command error codes, the prompt '>' turns red
export PS1="$Y\t$N $W"'$(__git_ps1 "(%s) ")'"$N$PROMPT_COLOR\u@\H$N:$C\w$N\n"'$CURSOR_PROMPT '
# TODO: Find out why my $R and $N shortcuts don't work here!!!
export PROMPT_COMMAND='if [ $? -ne 0 ]; then CURSOR_PROMPT=`bad_prompt`; else CURSOR_PROMPT="<"; fi;'

function bad_prompt(){
	# red='\033[0;31m'
	# NC='\033[0m' # No Color
	# echo -e "${red}>${NC}"
	echo -e ">"
}
