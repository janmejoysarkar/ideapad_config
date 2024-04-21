#!/bin/bash
#$HOME/.config/i3/i3_monitor.sh
dunst &
picom &
xset s off -dpms& #disables screensaver and turns off dpms
blueman-applet &
nitrogen --restore
notify-send 'Hello' $USER &
