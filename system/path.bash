#!/bin/bash

# Adds the dotfiles bins to the path, as well as others
export PATH=$PATH:./bin
export PATH=$PATH:/usr/local/bin
export PATH=$PATH:/usr/local/sbin
export PATH=$PATH:/usr/bin
export PATH=$PATH:/bin
export PATH=$PATH:$HOME/bin
export PATH=$PATH:$HOME/.bash/bin
export PATH=$PATH:$HOME/.bash/group/bin
export PATH=$PATH:$BASH/bin

# Source global definitions
GLOBAL_BASH_DEF='/etc/bashrc'

# Global variables
# Sometimes EDITOR require a complete path
export EDITOR=`which nano`
export SVN_EDITOR=`which nano`
export GIT_EDITOR=`which nano`
export PAGER=`which less`
export LS_COLORS="no=00:\
fi=00:\
di=01;36:\
ln=01;36:\
pi=40;33:\
so=01;35:\
do=01;35:\
bd=40;33;01:\
cd=40;33;01:\
or=40;31;01:\
ex=01;32:\
*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:\
*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:\
*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.avi=01;35:\
*.ogg=01;35:*.mp3=01;35:*.wav=01;35:\
";
export GREP_OPTIONS='--color=auto'
export GIT_CEILING_DIRECTORIES=`echo $HOME | sed -e's#/[^/]*$##'` # Either /home(linux) or /Users(mac)
export HISTFILESIZE=1000000000
export HISTSIZE=1000000
export PROMPT_COMMAND='history -a'
export BROWSER='firefox'
export LANG='C' # Testing: Try out the C locale
if [ -f "$HOME/.inputrc" ]; then
	export INPUTRC="$HOME/.inputrc"
fi;
export MAN_AUTOCOMP_FILE="/tmp/man_completes_`whoami`"
