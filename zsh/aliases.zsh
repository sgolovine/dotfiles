## SHELL ALIASES
# cli replacements
alias cat="bat"
alias ls='lsd'
#
# cli apps
alias brancher="npx tsx $HOME/Code/brancher/brancher.ts"
alias todo="$HOME/.venv/bin/pter --config $HOME/dotfiles/pter/pter.conf $HOME/Dropbox/todo/todo.txt"
alias todo-archived="$HOME/.venv/bin/pter --config $HOME/dotfiles/pter/pter.conf $HOME/Dropbox/todo/archive.txt"
alias t='todo'
alias t-a='todo-archived'
alias llm='$HOME/.venv/bin/llm'
alias lg='lazygit'
alias c='(cd $HOME/.crush-default && crush)'
#
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
alias gcnv="git commit --no-verify"
#
# vim/nvim aliases
alias vi='nvim'
alias vim='nvim'
alias nano='nvim'
#
# secure vim
alias svim="sudo -E nvim"
#
# misc
alias cls='clear'
alias l='ls'
alias gs='echo "Ghostscript has been remapped to ghostscript"'
alias ghostscript='/usr/local/bin/gs'
alias resrc='source ~/.zshrc && echo "Successfully Sourced zshrc"'
#
# postgres
alias pg-up="sudo systemctl start postgresql.service"
alias pg-down="sudo systemctl stop postgresql.service"
alias pg-status="sudo systemctl status postgresql.service"
#
# docker
alias d='docker'
alias docker-clean-build="COMPOSE_BAKE=true docker compose build --no-cache && docker compose up"
alias dcb='docker-clean-build'
alias dc-ls="docker container ls"
alias dc-lsa="docker container ls -a"
alias di-ls="docker image ls"
alias dc-rm="docker container rm"
alias di-rm="docker image rm"
alias dlf="docker logs -f"
alias dps="docker container ls"
alias dpsa="docker container ls -a"
#
# project specific
alias www-cms="md-edit $HOME/Code/www/src/content/posts"
alias wfe="cd ~/Work/ascend-ai-frontend"
alias wbe="cd ~/Work/ascend-ai-backend"
alias cfe="cd ~/Crewsum/frontend"
alias cbe="cd ~/Crewsum/backend"
