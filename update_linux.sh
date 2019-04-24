#!/bin/sh

DOTFILES=$(pwd)

echo "Copying vim files"
cp -r -u $HOME/.vim $DOTFILES/vim
cp -u $HOME/.vimrc $DOTFILES/vimrc

echo "Copying tmux"
cp -u $HOME/.tmux.conf $DOTFILES/tmux.conf

echo "Copying bin"
cp -u -r $HOME/bin $DOTFILES/bin

echo "Copying zshrc"
cp -u $HOME/.zshrc $DOTFILES/zshrc
