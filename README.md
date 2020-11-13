# dotfiles

🔌 My Dotfiles

## Installation

1. Clone the repository

```bash

git clone git@github.com:sgolovine/dotfiles.git ~/.dotfiles

```

2. Link ZSH

To link the ZSH configuration, create a symbolic link to `~/.zshrc`

```bash

ln -sf $HOME/.dotfiles/zsh/zshrc $HOME/.zshrc

```


3. Link VIM

```bash

ln -sf $HOME/.dotfiles/vim $HOME/.vim

ln -sf $HOME/.dotfiles/vimrc $HOME/.vimrc

```

Then open vim an run `:PlugInstall`