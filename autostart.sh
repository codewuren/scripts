#!/bin/bash

picom &
fcitx5 &
feh --bg-scale ~/Pictures/1.jpg &
/bin/bash ~/GitHub/Scripts/set-mouse-speed.sh &
/bin/bash ~/GitHub/Scripts/dwm-status-refresh.sh &
/bin/bash ~/GitHub/Scripts/pulse.sh &
nm-applet &
xset r rate 150 50 &
numlockx &
