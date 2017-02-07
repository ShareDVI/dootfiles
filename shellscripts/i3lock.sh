#!/bin/bash
convert /home/sharedvi/Wallpapers/Screenshot-coded-clean.bmp -density 144 -font "Segoe-UI" -pointsize 9.5 -fill "#ffffff" -draw "text 1825,1048 '$(date +%H:%M)
'" -draw "text 1801,1075 '$(date +%x)'" /tmp/Screenshot.png
i3lock -ef -p win -i /tmp/Screenshot.png
