export ZSH="/Users/king/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git aws brew golang)

source $ZSH/oh-my-zsh.sh

export DISABLE_AUTO_UPDATE=true

alias publickey='cat ~/.ssh/id_rsa.pub | pbcopy'
alias main="git checkout main"
alias gp="git push"
alias gl="git --no-pager log --decorate=no --pretty=oneline -n10"
alias rb="git rebase main"
alias c="cursor ."
alias gb="git for-each-ref --sort=-committerdate refs/heads/ --format='%(refname:short)' | head -n 5"
alias back="git checkout -"
alias update="brew update; brew upgrade; omz update"
alias code="cursor"
alias kk="main && git pull && back && rb && gpf"

source ~/.p10k.zsh