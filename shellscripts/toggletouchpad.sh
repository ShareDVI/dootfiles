#!/bin/bash
TOUCHPAD_ID="$(xinput list | grep Touchpad | perl -n -e'/id=(\d+)/ && print "$1\n"')"
if xinput list-props $TOUCHPAD_ID | grep -q "Device Enabled (145):	1" ; then
    xinput set-prop $TOUCHPAD_ID 145 0 ;
    echo "Touchpad Disabled" ;
else
    xinput set-prop $TOUCHPAD_ID 145 1 ;
    echo "Touchpad Enabled" ;
fi
