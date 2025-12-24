#!/bin/bash

# brew packages
brew update
brew install \
  argocd \
  audacity \
  awscli \
  codex \
  discord \
  helm \
  helmfile \
  jq \
  kubectl \
  meetingbar \
  neovim \
  nvm \
  powerlevel10k \
  pyenv \
  python \
  ripgrep \
  spotify \
  terraform \
  watch \
  wget \
  yt-dlp \
  yq \
  zoom
brew install --cask jordanbaird-ice ghostty raycast

# ssh key chmod
chmod 400 ~/.ssh/id_rsa
chmod 755 ~/.ssh/id_rsa.pub

# ensure config directories exist
mkdir -p ~/.config/nvm

# link configuration files
ln -sf ~/github/dotfiles/init.lua ~/.config/nvim/init.lua
ln -sf ~/github/dotfiles/.zshrc ~/.zshrc
ln -sf ~/github/dotfiles/.p10k.zsh ~/.p10k.zsh
cp ~/github/dotfiles/.gitconfig ~/.gitconfig
mkdir -p ~/.ssh
cp ~/github/dotfiles/.ssh/config ~/.ssh/config
