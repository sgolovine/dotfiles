# dotfiles
🔌 My Dotfiles


## Installation

All commands performed in home directory. Make sure respective folders that are being simlinked to have been backed up and removed/renamed

Clone the dotfiles:

```bash

git clone git@github.com:sgolovine/dotfiles.git ~/.dotfiles

```

### Vim

```bash
ln -s .dotfiles/vim/vim ~/.vim
ln -s .dotfiles/vim/vimrc ~/.vimrc

```

Run `:PlugInstall` in vim to complete installation


## TMUX

```bash

ln -sf .dotfiles/tmux/tmux.conf ~/.tmux.conf

```

## ZSH

### Prerequsites

bat (cat alternative): https://github.com/sharkdp/bat/releases
(or `brew install bat` on OSX)

```bash

ln -sf .dotfiles/zsh/zshrc ~/.zshrc

```
This will also install the bin/ folder (modify the zshrc source if the folder is not in ~/.dotfiles


## Hyperterm

```bash

ln -sf .dotfiles/hyperterm/hyper.js ~/.hyper.js
