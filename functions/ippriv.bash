#!/bin/bash

###### display private IP
function ippriv()
{
    ifconfig eth0|grep "inet adr"|awk '{print $2}'|awk -F ':' '{print $2}'
}
