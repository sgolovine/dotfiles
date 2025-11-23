# My personal dotfiles

These are my personal "dotfiles" that I use to configure my development enviorment.

## Downloads
These tools should be downloaded

- [LSD (ls alternative)](https://github.com/lsd-rs/lsd/releases)
- [Bat (cat alternative)](https://github.com/sharkdp/bat/releases)
- [Delta (git diff alterantive)](https://github.com/dandavison/delta/releases)
- [VSCodium](https://github.com/VSCodium/vscodium/releases)

## Installation

To install dotfiles, create symbolic links to the configs you would like to use.

```bash

# neovim
ln -sf $DOTFILES/nvim $HOME/.config/nvim

# zsh
ln -sf $DOTFILES/zsh/rc.zsh $HOME/.zshrc

# vscode
ln -sf $DOTFILES/vscode/settings.json $HOME/.config/Code/User/settings.json

# vscodium
ln -sf $DOTFILES/vscode/settings.json $HOME/.config/VSCodium/User/settings.json

# cursor
ln -sf $DOTFILES/vscode/settings.json $HOME/.config/Cursor/User/settings.json

# ghostty
ln -sf $DOTFILES/ghostty/config $HOME/.config/ghostty/config

# terminator
ln -sf $DOTFILES/terminator $HOME/.config/terminator

# gitconfig
ln -sf $DOTFILES/git/gitconfig $HOME/.gitconfig
```

## Other Tools

```bash

# Node Version Manager
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash

# Oh My ZSH
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

```

### Docker

#### Official Docs

https://docs.docker.com/desktop/setup/install/linux/ubuntu/

https://docs.docker.com/engine/install/linux-postinstall/

#### Installation

These may be out of date, if something doesn't work, refer to official docs and update this guide as needed.

```bash
# Add Docker Repo
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
```

```bash
# Install Docker
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
```

```bash
# Run without sudo
sudo groupadd docker

sudo usermod -aG docker $USER

# log out and log back in then run the following
# to validate that everything works.
docker run hello-world

```
