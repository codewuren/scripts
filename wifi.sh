#/bin/bash

sudo ip link set wlp0s20f0u7u4 up

wpa_passphrase yangchao 12345678 > int.conf

sudo wpa_supplicant -i wlp0s20f0u7u4 -c int.conf &

sudo dhcpcd