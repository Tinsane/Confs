\# Install brew and iterm2:  
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"  
brew install --cask iterm2

\# Install git:  
brew install git

\# Install wget:  
brew install wget  

\# Checkout this repo:  
git clone https://github.com/Tinsane/Confs.git

\# Install zsh:  
brew install zsh

\# Install [oh-my-zsh](https://ohmyz.sh/#install):  
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"  

\# Get zsh config:  
cp Confs/.zshrc .

\# Install curl:  
brew install curl

\# Install python:  
brew install python@3.9

\# Install python clang:  
pip3 install clang

\# Install [neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim):  
brew install neovim

\# Install [SpaceVim](https://spacevim.org/quick-start-guide/):  
curl -sLf https://spacevim.org/install.sh | bash

\# Get SpaceVim configs:  
cp -r Confs/.SpaceVim.d Confs/.vimrc .

\# Install [fzf](https://github.com/junegunn/fzf#installation):  
brew install fzf

\# Install [z](https://github.com/rupa/z):  
mkdir .zutil && cd .zutil && git clone https://github.com/rupa/z.git && cd ..

\# Install [bat](https://github.com/sharkdp/bat):  
brew install bat

\# Install [exa](https://github.com/ogham/exa):  
brew install exa

\# Install [fd](https://github.com/sharkdp/fd):  
brew install fd

\# Install [sd](https://github.com/chmln/sd):  
brew install sd

\# Install [dust](https://github.com/bootandy/dust):  
brew install dust

\# Install [hstr](https://github.com/dvorka/hstr):  
brew install hstr

\# Install [delta](https://github.com/dandavison/delta):  
brew install delta

\# Install [ripgrep](https://github.com/BurntSushi/ripgrep):  
brew install ripgrep

\# Install [procs](https://github.com/dalance/procs):  
brew install procs

\# Install [Spaceship](https://github.com/denysdovhan/spaceship-prompt):  
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1 &&  
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

\# Install [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md#oh-my-zsh):  
cd $ZSH_CUSTOM/plugins &&  
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

\# Install [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md#oh-my-zsh):  
cd $ZSH_CUSTOM/plugins &&  
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
