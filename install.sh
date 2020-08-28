#!/usr/bin/sh

#config /etc/hosts
mv ~/GitHub/Scripts/hosts /etc/hosts

#config /etc/pacman.conf
mv ~/GitHub/Scripts/pacman.conf /etc/pacman.conf

#install archlinuxcn-keyring
pacman -S archlinuxcn-keyring

#install something
pacman -S yay git neovim wpa_supplicant dhcpcd iw dialog net-tools networkmanager

#fonts
yay -S ttf-linux-libertine ttf-inconsolata ttf-joypixels ttf-twemoji-color noto-fonts-emoji ttf-liberation ttf-droid wqy-bitmapfont wqy-microhei wqy-microhei-lite wqy-zenhei adobe-source-han-mono-cn-fonts adobe-source-han-sans-cn-fonts adobe-source-han-serif-cn-fonts adobe-source-code-pro-fonts nerd-fonts-source-code-pro noto-fonts ttf-jetbrains-mono

#config /etc/sudoers
mv ~/GitHub/Scripts/sudoers /etc/sudoers

#add a new user
useradd -m -G ethan

#changer user's password
passwd ethan

#move /root/GitHub to /home/ethan/GitHub
mv /root/GitHub /home/ethan/GitHub

#change user to ethan
su ethan

#install zsh
yay -S zsh

#change shell
chsh -s /bin/zsh

#install oh-my-zsh
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh

#install xorg xorg-xinit
yay -S xorg xorg-xinit

#clone my dwm, st, dmenu GitHub repository
git clone https://github.com/EthanPluviophile/dwm ~/GitHub/dwm
git clone https://github.com/EthanPluviophile/st ~/GitHub/st
git clone https://github.com/EthanPluviophile/dmenu ~/GitHub/dmenu

#clone my nvim, neofetch config
git clone https://github.com/EthanPluviophile/nvim ~/.config/nvim
git clone https://github.com/EthanPluviophile/neofetch ~/.config.neofetch

#install bash-language-server
sudo pacman -S bash-language-server

#install ccls
yay -S ccls

#install python2 and python3
yay -S python2 python3

#install pip2 amd pip3
yay -S python2-pip python-pip

#install pynvim
pip3 install pynvim
pip2 install pynvim

#use npm to install nvim
npm install -g nvim

#install dwm
cd ~/GitHub/dwm
sudo make clean install

#install st
cd ~/GitHub/st
sudo make clean install

#install dmenu
cd ~/GitHub/dmenu
sudo make clean install

#install something
yay -S google-chrome obs-studio feh gimp cmus pulseaudio pavucontrol lxappearance debtap nvidia nvidia-settings nvidia-utils ueberzug ranger vlc

#config ~/.zshrc
sudo mv ~/GitHub/Scripts/.zshrc ~/.zshrc

#config /etc/pulse/default.pa
sudo mv ~/GitHub/Scripts/default.pa /etc/pulse/default.pa

#enable NetworkManager
systemctl enable NetworkManager

#config /etc/X11/xinit/xinitrc
sudo mv ~/GitHub/Scripts/xinitrc /etc/X11/xinit/xinitrc
