#!/bin/bash

# Google the parameter
function google () {
	links http://google.com/search?q=$(echo "$@" | sed s/\ /+/g)
}
