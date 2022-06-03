\# Install [terminator](https://github.com/gnome-terminator/terminator/blob/master/INSTALL.md):  
sudo add-apt-repository ppa:mattrose/terminator  
sudo apt-get update  
sudo apt install terminator  

\# Install brew and iterm2:  
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"  
brew install --cask iterm2

\# Install git:  
yes | sudo apt install git  

\# Checkout this repo:  
git clone https://github.com/Tinsane/Confs.git

\# Install zsh:  
yes | sudo apt install zsh

\# Install [oh-my-zsh](https://ohmyz.sh/#install):  
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"  

\# Get zsh config:  
cp Confs/.zshrc .

\# Install curl:  
sudo apt install curl

\# Install python:  
yes | sudo apt install python3.9

\# Install [neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim):  
yes | sudo apt install python3-neovim

\# Install [SpaceVim](https://spacevim.org/quick-start-guide/):  
curl -sLf https://spacevim.org/install.sh | bash

\# Install pynvim:  
python3 -m pip install --user --upgrade pynvim

\# Get SpaceVim configs:  
cp -r Confs/.SpaceVim.d Confs/.vimrc .

\# Install [fzf](https://github.com/junegunn/fzf#installation):  
sudo apt install fzf

\# Install [z](https://github.com/rupa/z):  
mkdir .zutil && cd .zutil && git clone https://github.com/rupa/z.git && cd ..

\# Install [Spaceship](https://github.com/denysdovhan/spaceship-prompt):  
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1 && \  
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme" 

\# Install [Powerlevel10k](https://github.com/romkatv/powerlevel10k):  
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k 

\# Install [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md#oh-my-zsh):  
cd $ZSH_CUSTOM/plugins && \  
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

\# Install [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md#oh-my-zsh):  
cd $ZSH_CUSTOM/plugins && \  
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

\# Install [golang](https://golang.org/doc/install):  
\# Download tar gz  
rm -rf /usr/local/go && \  
tar -xvf go1.16.2.linux-amd64.tar.gz && \  
sudo mv go /usr/local && \  
echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.profile && \  
export PATH=$PATH:/usr/local/go/bin && \  
go version

\# Install pip:  
sudo apt-get install python3-distutils && \  
sudo apt-get install python3-apt && \  
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && \  
python3 get-pip.py && \  
export PATH=$PATH:$HOME/.local/bin && \  
echo 'export PATH=$PATH:$HOME/.local/bin' >> ~/.profile

\# Install bat:  
brew install bat

\# Install click:  
cargo install click

\# Install fd:  
brew install fd

\# Install gh:  
brew install gh

\# Install jira (will require customization):  
go get github.com/go-jira/jira/cmd/jira && \
mkdir ~/.jira.d && \
cat <<EOM >~/.jira.d/config.yml\nendpoint: https://jira.mycompany.com\nEOM\n && \
jira login && \
jira ls -u vladimir.leskov && \
export SUBDOMAIN="https://databricks.atlassian.net"\nexport EMAIL="vladimir.leskov@databricks.com"\nmkdir -p ~/.jira.d\nprintf "endpoint: $SUBDOMAIN\nuser: $EMAIL\npassword-source: keyring" > ~/.jira.d/config.yml\n
  
\# Install jq:  
brew install jq
  
\# Install ripgrep:  
brew install ripgrep

\# Prevent Yandex.Disk from syncing everything:  
\# Change settings in tool config
