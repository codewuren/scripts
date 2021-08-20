#!/bin/sh

while true; do
	pactl set-card-profile alsa_card.pci-0000_01_00.1 off
	pactl set-card-profile alsa_card.pci-0000_00_1f.3 output:analog-stereo+input:analog-stereo
	sleep 1
done
