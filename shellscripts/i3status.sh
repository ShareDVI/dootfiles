#!/bin/bash

# shell scipt to prepend i3status with more stuff

i3status | while :
do
        read line
        LG=$(xkblayout-state print %e) 
	case "$LG" in
		"us")
			LG="🇺🇸 $LG"
			;;
		"ru")
			LG="🇷🇺 $LG"
			;;
		"uk")
			LG="🇺🇦 $LG"
			;;
	esac
        echo "$LG | $line" || exit 1
done
