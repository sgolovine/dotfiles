# My personal dotfiles

These are my personal "dotfiles" that I use to configure my development enviorment.

## Installation

To install dotfiles, create symbolic links to the configs you would like to use.

```bash

# neovim
ln -sf $HOME/dotfiles/nvim $HOME/.config/nvim

# zsh
ln -sf $HOME/dotfiles/zsh/rc.zsh $HOME/.zshrc

# vscode
ln -sf $HOME/dotfiles/vscode/settings.json $HOME/.config/Code/User/settings.json

# cursor
ln -sf $HOME/dotfiles/vscode/settings.json $HOME/.config/Cursor/User/settings.json

# ghostty
ln -sf $HOME/dotfiles/ghostty/config $HOME/.config/ghostty/config

```

## Other Tools

### Node Version Manager

```bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
```
