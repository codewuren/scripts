#!/bin/bash

picom &
fcitx5 &
nm-applet &
feh --bg-scale ~/Pictures/1.jpg &
/bin/bash ~/scripts/dwm-status.sh
/bin/bash ~/scripts/set-mouse-speed.sh &
/bin/bash ~/scripts/pulse.sh &
xset r rate 150 35 &
