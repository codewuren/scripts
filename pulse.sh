#!/bin/bash

echo "set-card-profile alsa_card.pci-0000_00_1f.3 output:analog-stereo+input:analog-stereo" > /etc/pulse/default.pa
echo "set-card-profile alsa_card.pci-0000_01_00.1 off" > /etc/pulse/default.pa
