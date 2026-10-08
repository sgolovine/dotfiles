# Standalone Git Bash config. Copy this file to ~/.bashrc.
# If your existing ~/.bash_profile does not load it, add:
#   [[ -f ~/.bashrc ]] && source ~/.bashrc
case $- in
    *i*) ;;
    *) return ;;
esac

# Paths use Git Bash's /c/Users/... spelling. Keep Windows' inherited PATH;
# the executables shipped in dotfiles/bin and apps/nvim are Linux binaries.
export DOTFILES="${DOTFILES:-$HOME/dotfiles}"
export BUN_INSTALL="${BUN_INSTALL:-$HOME/.bun}"
if [[ -n ${LOCALAPPDATA:-} ]] && command -v cygpath >/dev/null 2>&1; then
    export PNPM_HOME="${PNPM_HOME:-$(cygpath -u "$LOCALAPPDATA")/pnpm}"
else
    export PNPM_HOME="${PNPM_HOME:-$HOME/.local/share/pnpm}"
fi
for _bashrc_dir in "$HOME/.local/bin" "$HOME/.venv/Scripts" "$HOME/.venv/bin" \
    "$HOME/.cargo/bin" "$HOME/.opencode/bin" "$HOME/.lmstudio/bin" \
    "$PNPM_HOME" "$PNPM_HOME/bin" "$BUN_INSTALL/bin"; do
    [[ -d $_bashrc_dir ]] || continue
    case ":$PATH:" in
        *":$_bashrc_dir:"*) ;;
        *) PATH="$_bashrc_dir:$PATH" ;;
    esac
done
unset _bashrc_dir
export PATH

# Prefer Neovim, with Git Bash's bundled Vim as the fallback.
for _bashrc_editor in nvim vim vi; do
    if command -v "$_bashrc_editor" >/dev/null 2>&1; then
        export EDITOR="$_bashrc_editor"
        export VISUAL="$EDITOR"
        break
    fi
done
unset _bashrc_editor

# History survives multiple terminals; a leading space keeps a command private.
HISTFILE="$HOME/.bash_history"
HISTSIZE=10000
HISTFILESIZE=20000
HISTCONTROL=ignoreboth
shopt -s histappend cmdhist checkwinsize autocd cdspell
set +H

# Tab completion ignores case, displays choices immediately, and marks dirs.
# Up/Down search history using whatever you've already typed; Ctrl-R also works.
bind 'set completion-ignore-case on'
bind 'set show-all-if-ambiguous on'
bind 'set mark-symlinked-directories on'
bind 'set colored-stats on'
bind 'set menu-complete-display-prefix on'
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
bind '"\eOA": history-search-backward'
bind '"\eOB": history-search-forward'
bind '"\e[H": beginning-of-line'
bind '"\e[F": end-of-line'
bind '"\e[3~": delete-char'
bind '"\e\C-e": shell-expand-line'

# Git Bash normally loads these already. Use bundled completion if needed.
if ! declare -F __git_complete >/dev/null; then
    for _bashrc_file in /etc/bash_completion.d/git-completion.bash \
        /mingw64/share/git/completion/git-completion.bash \
        /mingw32/share/git/completion/git-completion.bash \
        /usr/share/git/completion/git-completion.bash; do
        if [[ -r $_bashrc_file ]]; then
            source "$_bashrc_file"
            break
        fi
    done
fi
unset _bashrc_file

# Small, readable prompt; no theme framework or special font required.
_bashrc_git_prompt() {
    if declare -F __git_ps1 >/dev/null; then
        __git_ps1 ' (%s)'
        return
    fi
    local branch
    branch=$(command git symbolic-ref --quiet --short HEAD 2>/dev/null) ||
        branch=$(command git rev-parse --short HEAD 2>/dev/null) || return 0
    printf ' (%s)' "$branch"
}

_bashrc_prompt() {
    local status=$?
    history -a
    history -n
    if [[ ${TERM:-dumb} == dumb ]]; then
        PS1='\u@\h \w$(_bashrc_git_prompt)'
        (( status == 0 )) || PS1+=" [$status]"
        PS1+='\n\$ '
    else
        PS1='\n\[\e[32m\]\u@\h\[\e[0m\] \[\e[34m\]\w\[\e[33m\]$(_bashrc_git_prompt)\[\e[0m\]'
        (( status == 0 )) || PS1+=" \[\e[31m\][$status]\[\e[0m\]"
        PS1+='\n\$ '
    fi
}
PROMPT_COMMAND=_bashrc_prompt

# Basic commands stay usable when bat, lsd, or Neovim aren't installed.
if command -v bat >/dev/null 2>&1; then
    alias cat='bat'
else
    alias cat='command cat'
fi
if command -v lsd >/dev/null 2>&1; then
    alias ls='lsd'
else
    alias ls='command ls --color=auto'
fi
alias l='ls'
alias ll='ls -lah'
alias la='ls -A'
alias vi="${EDITOR:-vim}"
alias vim="${EDITOR:-vim}"
alias nano="${EDITOR:-vim}"
# Windows elevation is handled by starting Git Bash as Administrator.
alias svim="${EDITOR:-vim}"
alias cls='clear'
alias resrc='source "$HOME/.bashrc" && echo "Successfully sourced bashrc"'
alias ..='cd ..'
alias ...='cd ../..'

# Personal applications still need to be installed on this machine.
# Python tools use .venv/Scripts on Windows (added to PATH above).
alias brancher='npx tsx "$HOME/Code/brancher/brancher.ts"'
alias todo='pter --config "$DOTFILES/pter/pter.conf" "$HOME/Dropbox/todo/todo.txt"'
alias todo-archived='pter --config "$DOTFILES/pter/pter.conf" "$HOME/Dropbox/todo/archive.txt"'
alias t='todo'
alias t-a='todo-archived'
alias llm='command llm'
alias lg='lazygit'
alias c='(cd "$HOME/.crush-default" && crush)'

# Git.
alias ga='git add -A'
alias gd='git diff'
alias gdc='git diff --cached'
alias gc='git commit'
alias gcm='git commit -m'
alias gp='git push'
alias gst='git status'
alias gco='git checkout'
alias gb='git branch'
alias gcnv='git commit --no-verify'
alias gl='git pull'
alias glog='git log --oneline --decorate --graph'

# npm.
alias bump-patch='npm version --no-git-tag-version patch'
alias bump-minor='npm version --no-git-tag-version minor'
alias bump-major='npm version --no-git-tag-version major'

# Docker Desktop exposes the same Docker CLI in Git Bash.
alias d='docker'
alias docker-clean-build='COMPOSE_BAKE=true docker compose build --no-cache && docker compose up'
alias dcb='docker-clean-build'
alias dc-ls='docker container ls'
alias dc-lsa='docker container ls -a'
alias di-ls='docker image ls'
alias dc-rm='docker container rm'
alias di-rm='docker image rm'
alias dv-ls='docker volume ls'
alias dv-rm='docker volume rm'
alias dlf='docker logs -f'
alias dps='docker container ls'
alias dpsa='docker container ls -a'

# Projects and other tools.
alias www-cms='md-edit "$HOME/Code/www/src/content/posts"'
alias wfe='cd "$HOME/Work/ascend-ai-frontend"'
alias wbe='cd "$HOME/Work/ascend-ai-backend"'
alias cfe='cd "$HOME/Crewsum/frontend"'
alias cbe='cd "$HOME/Crewsum/backend"'
alias codex='codex --yolo'
alias claude='claude --dangerously-skip-permissions'
# Use LM Studio's Windows CLI instead of the Linux AppImage.
alias lms='command lms'
alias hd='hunk diff'
alias tf='terraform'
alias ssh-rook='ssh 192.168.68.62'
alias cdm='codium'
alias dm='docker-manager'
alias wt='worktree-manager'

# Windows equivalents of the Linux-only aliases.
_bashrc_pwdc() {
    # Native Windows tools expect a Windows path; omit the trailing newline.
    local path
    path=$(cygpath -w "$PWD") || return
    printf '%s' "$path" | clip.exe && echo 'Copied pwd to clipboard'
}
alias pwdc='_bashrc_pwdc'

alias gs='echo "Ghostscript has been remapped to ghostscript"'
_bashrc_ghostscript() {
    local executable
    for executable in gswin64c gswin32c gs; do
        if command -v "$executable" >/dev/null 2>&1; then
            command "$executable" "$@"
            return
        fi
    done
    printf '%s\n' 'Ghostscript is not installed or is not on PATH.' >&2
    return 127
}
alias ghostscript='_bashrc_ghostscript'

# PostgreSQL installed as a Windows service. Pass its exact service name when
# more than one version is installed: pg-up postgresql-x64-17
# Starting/stopping services may require an Administrator terminal.
_bashrc_postgres() {
    local action=$1
    local service=${2:-postgresql*}
    PG_SERVICE="$service" PG_ACTION="$action" powershell.exe -NoProfile -Command '
        $ErrorActionPreference = "Stop"
        try {
            $services = @(Get-Service -Name $env:PG_SERVICE)
            if ($services.Count -ne 1) {
                throw "Specify one PostgreSQL service name; use pg-status to list services."
            }
            switch ($env:PG_ACTION) {
                "start" { $services | Start-Service }
                "stop"  { $services | Stop-Service }
            }
            $services | Get-Service
        } catch { Write-Error $_; exit 1 }
    '
}
alias pg-up='_bashrc_postgres start'
alias pg-down='_bashrc_postgres stop'
alias pg-status='powershell.exe -NoProfile -Command "Get-Service -Name postgresql*"'

# Complete branches/paths for your Git shortcuts, when bundled support exists.
if declare -F __git_complete >/dev/null; then
    __git_complete ga git_add
    __git_complete gd git_diff
    __git_complete gdc git_diff
    __git_complete gc git_commit
    __git_complete gcm git_commit
    __git_complete gp git_push
    __git_complete gst git_status
    __git_complete gco git_checkout
    __git_complete gb git_branch
    __git_complete gcnv git_commit
    __git_complete gl git_pull
    __git_complete glog git_log
fi
