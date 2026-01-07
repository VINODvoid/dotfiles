# Oh My Zsh configuration
export ZSH="$HOME/.oh-my-zsh"

# Theme
ZSH_THEME="robbyrussell"

# Plugins
plugins=(
    git
    docker
    docker-compose
    sudo
    zsh-autosuggestions
    zsh-syntax-highlighting
    zsh-completions
    colored-man-pages
    extract
    command-not-found
    rust
    golang
    npm
    node
    python
    pip
)

# Load Oh My Zsh
source $ZSH/oh-my-zsh.sh

# Load custom configurations
[ -f ~/.config/zsh/aliases.zsh ] && source ~/.config/zsh/aliases.zsh
[ -f ~/.config/zsh/custom.zsh ] && source ~/.config/zsh/custom.zsh

# Initialize zoxide (better cd)
if command -v zoxide >/dev/null 2>&1; then
    eval "$(zoxide init zsh)"
fi


# FZF configuration
if [ -f /usr/share/fzf/key-bindings.zsh ]; then
    source /usr/share/fzf/key-bindings.zsh
fi

if [ -f /usr/share/fzf/completion.zsh ]; then
    source /usr/share/fzf/completion.zsh
fi

# History options
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_SPACE
setopt SHARE_HISTORY
setopt APPEND_HISTORY
setopt INC_APPEND_HISTORY

# opencode
export PATH=/home/crybaby/.opencode/bin:$PATH

. "$HOME/.local/share/../bin/env"
export PATH=$HOME/.local/bin:$PATH

# bun completions
[ -s "/home/crybaby/.bun/_bun" ] && source "/home/crybaby/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
export PATH=$PATH:~/.local/bin
