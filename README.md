# My personal dotfiles

These are my personal "dotfiles" that I use to configure my development enviorment.

## Installation (Quick)

```bash
chmod +x ./INSTALL.sh
./INSTALL.sh
```

## Installation (Manual)

We "install" dotfiles by creating a symbolic link from the location in our dotfiles to the correct location for the config. 

For example:

```bash
# zshrc
ln -sf $HOME/dotfiles/zshrc/zshrc $HOME/.zshrc

# neovim
ln -sf $HOME/dotfiles/nvim $HOME/.config/nvim

```


