# This script will link up
# Files from this directory to
# where they should be

echo "Linking Software"

echo "Linking ZSH"
$(which ln) -sf $HOME/.dotfiles/zsh/zshrc $HOME/.zshrc

echo "Linking VIM"
$(which ln) -sf $HOME/.dotfiles/vim/vim $HOME/.vim
$(which ln) -sf $HOME/.dotfiles/vim/vimrc $HOME/.vimrc
