## SECRET ENVIORMENT VARIABLES
source $HOME/.env

### EXPORTS
export TERM='xterm-256color'                                                ## 256 colors
export ZSH="/home/sgolovine/.oh-my-zsh"                                     ## oh my zsh
export VISUAL=vim                                                           ## use vim instead of nano on EDITOR
export EDITOR=VISUAL                                                        ## use vim instead of nano on EDITOR
export CLICOLOR=1                                                           ## terminal highlighting
export LSCOLORS=GxFxCxDxBxegedabagaced                                      ## color pattern for terminal highlighting
export NVM_DIR="$HOME/dev/nvm"                                              ## node version manager
export PATH=${PATH}:$HOME/dev/Android/Sdk/tools                             ## android tools
export PATH=${PATH}:$HOME/dev/Android/Sdk/platform-tools                    ## android platform tools
export PATH="$PATH:$HOME/.rvm/bin"                                          ## ruby version manager
export PATH="$PATH:$HOME/bin"                                               ## bin folder for scripts
### Aliases
alias edit:zsh='code ~/.zshrc'
alias edit:tmux='code ~/.tmux.conf'
alias edit:hyper='code ~/.hyper.js'
alias search='ls -a | grep'
alias resrc='source ~/.zshrc && echo "sourced zshrc from ~/.zshrc"'         ## quick source this file
alias home-server='ssh sgolovine@192.168.1.84'                              ## quick ssh into home server)
alias debug='$HOME/dev/apps/react-native-debugger/debug &'                  ## start react-native debugger
alias git-cloc='bash ~/dev/scripts/git-cloc.sh'                            ## run 'count lines of code' on git repo
# tmux
alias t-s='tmux ls'                 # Quick list tmux sessions
alias t-a='tmux attach'             # Attach to session
alias t-n='tmux new -s'             # New session w/ name


### FUNCTIONS

# 1password
function 1pass() {
    if [ -d "$HOME/dev/apps/1-password" ];then
        $HOME/dev/apps/1-password/1-password &
    else
        echo "1 Password not found at $HOME/1-password, make sure it is installed in the correct place"
    fi
}

# Copy SSH key to clipboard
function copy-ssh() {
    if [ -f "$HOME/.ssh/id_rsa.pub" ];then
        xclip -sel clip < ~/.ssh/id_rsa.pub 
        echo "your ssh key was copied to your clipboard"
    else
        echo "Missing public key, have you generated an SSH key?"
    fi
}

# Android / Emulator
function emulator() {
    if [ -d "$HOME/Android/Sdk/emulator" ]; then
        $HOME/Android/Sdk/emulator/emulator $1 &
    else
        echo "Emualtor executable not found"
    fi
}



#############################################
### PLACE ALL OTHER CONFIGURATIONS BELOW ####
#############################################

# zsh
ZSH_THEME="robbyrussell"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# zsh/theme
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs history time)

# nvm
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /home/sgolovine/dev/nvm/versions/node/v11.3.0/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /home/sgolovine/dev/nvm/versions/node/v11.3.0/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /home/sgolovine/dev/nvm/versions/node/v11.3.0/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /home/sgolovine/dev/nvm/versions/node/v11.3.0/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[[ -f /home/sgolovine/dev/nvm/versions/node/v11.3.0/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh ]] && . /home/sgolovine/dev/nvm/versions/node/v11.3.0/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh