export ZSH="/Users/king/.oh-my-zsh"

ZSH_THEME="gnzh"

export UPDATE_ZSH_DAYS=3

plugins=(git)

source $ZSH/oh-my-zsh.sh

alias publickey='cat ~/.ssh/id_rsa.pub | pbcopy'
