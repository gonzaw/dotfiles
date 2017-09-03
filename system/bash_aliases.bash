#!/bin/bash

# Aliases
alias ls='ls -h $LS_COLOR'
alias la='ls -lah $LS_COLOR'
alias ll='ls -lh $LS_COLOR'
alias ssh='ssh -A'
alias g='git'
alias top='top $TOP_OPTIONS'
alias rcopy='rsync -az --stats --progress --delete'
alias ..='cl ..'
alias trim_whitespace="sed -i 's/[ \t]*$//' "
alias sush='ssh -l root'
alias http_headers='curl -svo /dev/null'

##################################################
# App-specific					 #
##################################################
alias audio='ncmpcpp'									# music player
alias nano='nano -W -m'									# disable annoying line wrapping

##################################################
# Command substitution				 #
##################################################
alias rmdir='rmdir -v'
alias rm_='rm -iv'

##################################################
# Information					 #
##################################################
alias codename='lsb_release -cs | sed "s/^./\u&/"'					# Linux version detail - just codename (Natty, Oneiric, etc)
alias cooling='acpi -c'									# shows cooling for processors
alias cpu_hogs='ps wwaxr -o pid,stat,%cpu,time,command | head -10'			# to find CPU hogs
alias cpus='grep -c ^processor /proc/cpuinfo'						# number of CPU's in a system
alias cpu='sudo dmidecode | grep Core'							# CPU info in a system
alias ctemp='sensors -f && sensors'							# to get the computer temperature in Fahrenheit and Celcius
alias distro='lsb_release -is'								# Linux distro version (Ubuntu, Linux Mint, Debian, Fedora, etc)
alias distro_ver='lsb_release -rs'							# Linux version detail - just codename version (11.04, 11.10, etc)
alias distro_vers='lsb_release -ds'							# Linux distro and version details (Ubuntu 11.04)
alias space='df -h'									# disk space usage
