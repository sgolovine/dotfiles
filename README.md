# dotfiles

🔌 My Dotfiles

### Setup

```bash
# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Clone this repo into .dotfiles
git clone git@github.com:sgolovine/dotfiles.git

# Install Node.js
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash

# Link zshrc
ln -sf ~/.dotfiles/zsh/zshrc ~/.zshrc
source ~/.zshrc

# Setup VIM
ln -sf ~/.dotfiles/vim/vimrc ~/.vimrc
ln -sf ~/.dotfiles/vim/vim ~/.vim

```

## Homebrew Formulas

```bash

# vscode
brew install --cask visual-studio-code

# firefox
brew install --cask firefox

# figma
brew install --cask figma

# bat (a cat alternative)
brew install bat

# pine (markdown editor)
brew tap lukakerr/things
brew install —cask pine

```


## Useful Links

[Fira Code](https://github.com/tonsky/FiraCode)

[iTerm](https://iterm2.com/)

[vscode](https://code.visualstudio.com/)

[1password](https://1password.com/)

[firefox](https://www.mozilla.org/en-US/firefox/new/)


