# dotfiles

🔌 My Dotfiles

### Setup

1. Install Homebrew

```bash

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

```

2. Clone dotfiles

```bash

git clone git@github.com:sgolovine/dotfiles.git ~/.dotfiles

```

3. Install NVM (NodeJS)

```bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash

# OR

wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash


```

4. Install Homebrew formulas

```bash

# do this inside the .dotfiles directory where Brewfile is kept
brew bundle

```

5. Link ZSH and VIM Config

```bash

# Link zshrc
ln -sf ~/.dotfiles/zsh/zshrc ~/.zshrc
source ~/.zshrc

# Setup VIM
ln -sf ~/.dotfiles/vim/vimrc ~/.vimrc
ln -sf ~/.dotfiles/vim/vim ~/.vim

```

Alternatively run `linker.sh`




## Useful Links

[Fira Code](https://github.com/tonsky/FiraCode)

[iTerm](https://iterm2.com/)

[vscode](https://code.visualstudio.com/)

[1password](https://1password.com/)

[firefox](https://www.mozilla.org/en-US/firefox/new/)

[fix zsh compinit compaudit](https://stackoverflow.com/questions/13762280/zsh-compinit-insecure-directories/63447799)
