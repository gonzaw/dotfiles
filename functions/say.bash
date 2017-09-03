#!/bin/bash

###### Google text-to-speech in mp3/wav format
function say() { 
	LANGUAGE="en"
	for i in "$@"
	do
	case $i in
		-l=*|--language=*)
		LANGUAGE="${i#*=}"
		shift
		;;
		-h|--help)
		echo "-l=LENGUAJE | --language=LENGUAJE"
		echo ""
		echo "Lenguajes:"
		echo "ES: Spanish"
		echo "EN: English"
		echo "FR: French"
		
		return 0
		;;
		--default)
		DEFAULT=YES
		shift
		;;
		*)
				# unknown option
		;;
	esac
	done	
	
	mplayer -user-agent Mozilla "http://translate.google.com/translate_tts?tl=$LANGUAGE&q=$(echo $* | sed 's#\ #\+#g')" > /dev/null 2>&1 ; 
}
