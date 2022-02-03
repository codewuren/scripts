#/bin/bash

COUNT=$(ps -ef |grep bspwm |grep -v "grep" |wc -l)

xinput --set-prop "pointer:Logitech G304" "libinput Accel Speed" -0
xrandr --dpi 144
xset s off
xset dpms 0 0 0
xset r rate 200 35
sleep 2
pgrep -x sxhkd > /dev/null || sxhkd -m 1&

while [ $COUNT -ne 0 ]
do
	pactl set-card-profile alsa_card.pci-0000_01_00.1 off
	pactl set-card-profile alsa_card.pci-0000_00_1f.3 output:analog-stereo+input:analog-stereo
	setxkbmap us colemak
	sleep 1
done
