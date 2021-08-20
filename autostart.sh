#!/bin/bash

picom &
fcitx5 &
feh --bg-scale ~/Pictures/1.jpg &
/bin/bash ~/scripts/set-mouse-speed.sh &
/bin/bash ~/scripts/dwm-status-refresh.sh &
/bin/bash ~/scripts/pulse.sh &
xset r rate 150 50 &
numlockx &