Install [terminator](https://github.com/gnome-terminator/terminator/blob/master/INSTALL.md):  
sudo add-apt-repository ppa:mattrose/terminator  
sudo apt-get update  
sudo apt install terminator  

Install git:  
yes | sudo apt install git  

Checkout this repo:  
git clone https://github.com/Tinsane/Confs.git

Install zsh:  
yes | sudo apt install zsh

Install [oh-my-zsh](https://ohmyz.sh/#install):  
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"  

Get zsh config:  
cp Confs/.zshrc .

Install curl:  
sudo apt install curl

Install python:  
yes | sudo apt install python3.9

Install [neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim):  
yes | sudo apt install python3-neovim

Install [SpaceVim](https://spacevim.org/quick-start-guide/):  
curl -sLf https://spacevim.org/install.sh | bash

Get SpaceVim configs:  
cp -r Confs/.SpaceVim.d Confs/.vimrc .
