# My personal dotfiles

These are my personal "dotfiles" that I use to configure my development enviorment.

## Installation

To install dotfiles, create symbolic links to the configs you would like to use.

```bash

# neovim
ln -sf $DOTFILES/nvim $HOME/.config/nvim

# zsh
ln -sf $DOTFILES/zsh/rc.zsh $HOME/.zshrc

# vscode
ln -sf $DOTFILES/vscode/settings.json $HOME/.config/Code/User/settings.json

# cursor
ln -sf $DOTFILES/vscode/settings.json $HOME/.config/Cursor/User/settings.json

# ghostty
ln -sf $DOTFILES/ghostty/config $HOME/.config/ghostty/config

# terminator
ln -sf $DOTFILES/terminator $HOME/.config/terminator
```

## Other Tools

### Node Version Manager

```bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
```
