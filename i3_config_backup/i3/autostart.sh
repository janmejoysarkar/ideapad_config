#!/bin/bash
$HOME/.config/i3/i3_monitor.sh
dunst &
picom &
./.dropbox-dist/dropboxd &
xset s noblank & #disables screensaver screenblanking
xset s off & #disables screensaver
xset dpms 0 0 0 &
blueman-applet &
notify-send 'Hello' $USER &

