# zshrc
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# node version manager
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# cursor
# TODO: this alias does not work correctly
# when opening a folder, it keeps the process inside
# of the shell instead of offloading it.
# we should really have a solution where it's added to
# the path instead of doing dumb shit like this
# alias cursor='/opt/cursor/cursor.appimage --no-sandbox &'


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


# Created by `pipx` on 2025-02-28 19:43:11
export PATH="$PATH:/home/sgolovine/.local/bin"
