#/bin/bash

COUNT=$(ps -ef |grep bspwm |grep -v "grep" |wc -l)

while [ $COUNT -ne 0 ]
do
	xinput --set-prop "pointer:Logitech G304" "libinput Accel Speed" -0.4
	pactl set-card-profile alsa_card.pci-0000_01_00.1 off
	pactl set-card-profile alsa_card.pci-0000_00_1f.3 output:analog-stereo+input:analog-stereo
	xset r rate 150 35 &
	sleep 1
done
