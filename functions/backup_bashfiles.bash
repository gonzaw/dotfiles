#!/bin/bash

function backup_bashfiles()
{
  ARCHIVE="$HOME/.bash_backup/bash_dotfiles_$(date +%Y%m%d_%H%M%S).tar.gz";
  cd ~
  tar -czvf $ARCHIVE .bash_profile .bashrc .bash_functions .bash_aliases .bash_prompt
  echo "All backed up in $ARCHIVE";
}
