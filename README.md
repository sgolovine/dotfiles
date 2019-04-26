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

```bash

ln -sf .dotfiles/zsh/zshrc ~/.zshrc

```



