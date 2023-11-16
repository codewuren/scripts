
#install zsh and wget
yay -S zsh wget

#change shell
chsh -s /bin/zsh

#install oh-my-zsh(need wget)
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh
