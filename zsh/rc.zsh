# enviorment variables
export ZSH="$HOME/.oh-my-zsh"
export DOTFILES="$HOME/dotfiles"
export PATH="$PATH:/home/sgolovine/.local/bin"
export PATH="$PATH:$DOTFILES/bin"
export NVM_DIR="$HOME/.nvm"
export EDITOR=nvim
export DEFAULT_USER=sgolovine
export ZSH_THEME="agnoster"

# zshrc
plugins=(git)
source $ZSH/oh-my-zsh.sh

# node version manager
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"


# git aliases
alias ga='git add -A'
alias gd='git diff'
alias gdc='git diff --cached'
alias gc='git commit'
alias gcm='git commit -m '
alias gp='git push'
alias gst='git status'
alias gco='git checkout'
alias gb='git branch'

# vim/nvim aliases
alias vi='nvim'
alias vim='nvim'
alias nano='nvim'

# secure vim
alias svim="sudo -E nvim"

# misc aliases
alias cls='clear'
alias l='ls'
alias gs='echo "Ghostscript has been remapped to ghostscript"'
alias ghostscript='/usr/local/bin/gs'
alias resrc='source ~/.zshrc && echo "Successfully Sourced zshrc"'

# postgres aliases
alias pg-up="sudo systemctl start postgresql.service"
alias pg-down="sudo systemctl stop postgresql.service"
alias pg-status="sudo systemctl status postgresql.service"

# docker aliases
alias docker-clean-build="COMPOSE_BAKE=true docker compose build --no-cache && docker compose up"
