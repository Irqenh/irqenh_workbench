# Oh-My-Zsh Config


# User aliases

alias la="ls -la"
alias ll="ls -l"
alias r="ranger"
alias n="nvim"
alias c="clear"
alias q="exit"
alias h="history"
alias updg="sudo apt update && sudo apt upgrade -y"
alias dady="ssh -p 22544 ue8gc0t@5.8.34.17"
alias py="python3"

alias zc="n ~/.zshrc && source ~/.zshrc" 
alias nc="n ~/.config/nvim/init.vim"

# Exports
export ZSH="$HOME/.oh-my-zsh"
export EDITOR="/usr/bin/nvim"


ZSH_THEME="af-magic"
COMPLETION_WAITING_DOTS="true"

plugins=(
	git
)

source $ZSH/oh-my-zsh.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
