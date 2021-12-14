# Path exports for various things

## Android Path Exports
export ANDROID_HOME=$HOME/Library/Android/sdk

## Android > Platform Tools
export PATH=$PATH:$ANDROID_HOME/platform-tools

## Android > Tools
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin

## Android > Emulator
export PATH=$PATH:$ANDROID_HOME/emulator

## /usr/local/bin for homebrew
export PATH="/usr/local/bin/:${PATH}"
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"

## Node Version Manager
export NVM_DIR="${HOME}/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

## Ruby Version Manager
export PATH=$PATH:"$HOME/.rvm/bin"

## diff-so-fancy
export PATH=$ZSH_MODULES/diff/:$PATH
