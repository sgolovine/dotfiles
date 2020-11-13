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

Once linked run:

```bash

source ~/.zshrc

```

After which you will be able to run `resrc` to do the same thing

3. Link VIM

```bash

ln -sf $HOME/.dotfiles/vim/vim $HOME/.vim

ln -sf $HOME/.dotfiles/vim/vimrc $HOME/.vimrc

```

Then open vim an run `:PlugInstall`


