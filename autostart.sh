#/bin/bash

xinput --set-prop 12 'libinput Accel Profile Enabled' 0, 1
xinput --set-prop 12 'libinput Accel Speed' -0
dunst -conf ~/.config/dunst/dunstrc &
picom &
nm-applet &
fcitx5 &
feh --bg-fill --randomize ~/Pictures/Wallpapers/* &
xset s off
xset dpms 0 0 0
xset r rate 200 35
pactl set-card-profile alsa_card.pci-0000_01_00.1 off
pactl set-card-profile alsa_card.pci-0000_00_1f.3 output:analog-stereo+input:analog-stereo
