#!/bin/bash

function bak()
{
  cp $1 $1_`date +%H:%M:%S_%d-%m-%Y`
}
