#!/bin/bash

# brew packages
brew update
brew install wget awscli golangci-lint jq nvm packer pyenv yt-dlp yq meetingbar vim
brew install --cask jordanbaird-ice
brew install --cask puppetlabs/puppet/pdk

# ssh key chmod
chmod 400 ~/.ssh/id_rsa
chmod 755 ~/.ssh/id_rsa.pub

# move .zshrc
cp .zshrc ~/.zshrc

# copy .gitconfig
cp .gitconfig ~/.gitconfig
