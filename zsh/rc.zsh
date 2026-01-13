# enviorment variables
export ZSH="$HOME/.oh-my-zsh"
export DOTFILES="$HOME/dotfiles"
export PATH="$PATH:/home/sgolovine/.local/bin"
export PATH="$PATH:$DOTFILES/bin"
export NVM_DIR="$HOME/.nvm"
export EDITOR=nvim
export DEFAULT_USER=sgolovine
export ZSH_THEME="agnoster"
#
# x-wayland fixes
export XCURSOR_THEME=Yaru
export XCURSOR_SIZE=32
#
# zshrc
plugins=(git)
source $ZSH/oh-my-zsh.sh
source $DOTFILES/zsh/lscolors.sh
#
# rust / cargo
# source $HOME/.cargo/env
#
# node version manager
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
#
# aliases
source $DOTFILES/zsh/aliases.zsh
