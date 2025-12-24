# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="/Users/jsadowski/.oh-my-zsh"

plugins=(git aws brew golang)

source $ZSH/oh-my-zsh.sh

alias publickey='cat ~/.ssh/id_rsa.pub | pbcopy'
alias main="git checkout main"
alias gp="git push"
alias gl="git --no-pager log --decorate=no --pretty=oneline -n10"
alias rb="git rebase main"
alias c="nvim ."
alias gb="git for-each-ref --sort=-committerdate refs/heads/ --format='%(refname:short)' | head -n 5"
alias back="git checkout -"
alias update="brew update && brew upgrade && omz update && brew cleanup"
alias kk="main && git pull && back && rb && gpf"
alias gpf="git push --force-with-lease"
alias k="kubectl"
alias config="nvim ~/.config/nvim/init.lua"

export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme
