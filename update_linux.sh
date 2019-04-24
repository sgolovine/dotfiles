#!/bin/sh

DOTFILES=$(pwd)

echo "Copying vim files"
cp -r -u $HOME/.vim $DOTFILES/vim
cp -u $HOME/.vimrc $DOTFILES/vimrc

echo "Copying tmux"
cp -u $HOME/.tmux.conf $DOTFILES/tmux.conf

