#!/bin/bash
# Paths for netkit - Network simulator

export NETKIT_HOME=/home/gonzalo/bin/netkit/netkit
export MANPATH=:$NETKIT_HOME/man

[[ ":$PATH:" != *":$NETKIT_HOME/bin:"* ]] && PATH="$NETKIT_HOME/bin:${PATH}"
