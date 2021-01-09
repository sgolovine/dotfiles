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


