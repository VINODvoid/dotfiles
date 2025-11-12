# XDG Base Directory
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

# Editor
export EDITOR='nvim'
export VISUAL='nvim'
export PAGER='less'

# Language environments
export GOPATH="$HOME/go"
export CARGO_HOME="$HOME/.cargo"
export RUSTUP_HOME="$HOME/.rustup"

# PATH
export PATH="$HOME/.local/bin:$PATH"
export PATH="$GOPATH/bin:$PATH"
export PATH="$CARGO_HOME/bin:$PATH"
export PATH="$HOME/.npm-global/bin:$PATH"

# NPM global packages without sudo
export NPM_CONFIG_PREFIX="$HOME/.npm-global"

# History
export HISTSIZE=10000
export SAVEHIST=10000
export HISTFILE="$HOME/.zsh_history"

# CUDA Environment Variables
export PATH=/opt/cuda/bin:$PATH
export LD_LIBRARY_PATH=/opt/cuda/lib64:$LD_LIBRARY_PATH
