#!/bin/bash

# brew packages
brew update
brew install wget python3

# npm config
sudo chown -R $USER:$GROUP ~/.npm
sudo chown -R $USER:$GROUP ~/.config
sudo chown -R $USER:$(id -gn $USER) /Users/$USER/.config

# global npm packages
sudo npm install -g eslint prettier yarn

# ssh config
mkdir -p ~/.ssh/

cat <<EOT > ~/.ssh/config
Host *
    UseKeychain yes
EOT

# ssh key chmod
chmod 400 ~/.ssh/id_rsa
chmod 755 ~/.ssh/id_rsa.pub

# move .zshrc
cp .zshrc ~/.zshrc

# copy .gitconfig
cp .gitconfig ~/.gitconfig