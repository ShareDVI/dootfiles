#!/bin/bash
if xset q | grep -q "DPMS is Enabled" ; then
    xset s off -dpms ;
    echo "DPMS Disabled" ;
else
    xset s on +dpms ;
    echo "DPMS Enabled" ;
fi
