# My Dotfiles

This repository holds my dotfiles.

## Setup

```shell
# Clone the dotfiles repo to ~/.dotfiles
$(which git) clone git@github.com:sgolovine/dotfiles.git ~/.dotfiles

# Install Homebrew
$(which curl) -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh

# Install MacOS Apps
# for this step you must be in the dotfiles directory
# this step must be performed prior to linking the zsh config.
cd ~/.dotfiles
brew bundle

# Link zsh Config
$(which ln) -sf $HOME/.dotfiles/zsh/zshrc $HOME/.zshrc

# Link vim config
$(which ln) -sf $HOME/.dotfiles/vim/vim $HOME/.vim
$(which ln) -sf $HOME/.dotfiles/vim/vimrc $HOME/.vimrc

# Copy gitconfig - change values as required after copy
$(which cp) $DOTFILES/gitconfig $HOME/.gitconfig

# Configure directory colors
# Make sure that coreutils is installed and ZSH is configured.
$(which ln) -sf $HOME/.dotfiles/dircolors $HOME/.dircolors



```

## Fonts

[Fira Code](https://github.com/tonsky/FiraCode) fonts are located in the `font` folder. Included are OTF, TTF and Variable width fonts. These should be installed with FontBook, through VSCode, etc.

```json
// This is the font configuration for VSCode
// Via: https://github.com/tonsky/FiraCode/wiki/VS-Code-Instructions

// Add the font
"editor.fontFamily": "Fira Code",
"editor.fontLigatures": "'calt', 'ss01', 'ss02', 'ss03', 'ss04', 'ss05', 'ss06', 'zero', 'onum'"

```

## Fix ZSH compinit

Occasionally ZSH will complain with this error:

```shell
zsh compinit: insecure directories, run compaudit for list.
Ignore insecure directories and continue [y] or abort compinit [n]?
```

To fix this you must update permissions on some directories

```shell
# Works on older MacOS Versions. Might not work one newer ones
sudo chmod -R 755 /usr/local/share/zsh/site-functions
sudo chown -R root:root /usr/local/share/zsh/site-functions

# Works on new MacOS Versions.
sudo chmod -R 755 /usr/local/share/zsh
sudo chown -R root:staff /usr/local/share/zsh

```

## Useful Links

[Fira Code](https://github.com/tonsky/FiraCode)

[iTerm](https://iterm2.com/)

[vscode](https://code.visualstudio.com/)

[1password](https://1password.com/)

[firefox](https://www.mozilla.org/en-US/firefox/new/)

[fix zsh compinit compaudit](https://stackoverflow.com/questions/13762280/zsh-compinit-insecure-directories/63447799)
