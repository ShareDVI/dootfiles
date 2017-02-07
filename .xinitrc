#!/bin/sh
source /home/sharedvi/.config/locale.conf
xset b off
source /home/sharedvi/.fehbg
export TERMINAL=xfce4-terminal
xrandr --setprovideroffloadsink radeon Intel
exec /usr/lib/notify-osd/notify-osd &
exec xautolock -locker i3lock.sh -time 10 -corners 0-00 &
exec i3
