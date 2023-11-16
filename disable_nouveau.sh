#/bin/bash

echo "blacklist nouveau" > /etc/modprobe.d/nouveau.conf

mkinitcpio -p linux
