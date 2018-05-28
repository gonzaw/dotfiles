#!/bin/bash
# Add RVM to PATH for scripting
[[ ":$PATH:" != *":$HOME/.rvm/bin:"* ]] && PATH="$HOME/.rvm/bin:${PATH}"
