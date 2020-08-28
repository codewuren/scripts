#!/bin/bash

picom &
fcitx5 &
feh --bg-scale ~/Pictures/1.jpg &
/bin/bash ~/GitHub/Scripts/set-mouse-speed.sh &
/bin/bash ~/GitHub/Scripts/dwm-status-refresh.sh &
pactl set-card-profile alsa_card.pci-0000_01_00.1 off &
pactl set-card-profile alsa_card.pci-0000_00_1f.3 output:analog-stereo+input:analog-stereo &
nm-applet &
xset r rate 150 50 &
numlockx &
