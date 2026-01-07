# ============================================
# System Aliases
# ============================================

# Package management
alias update='sudo pacman -Syu && yay -Syu'
alias install='sudo pacman -S'
alias remove='sudo pacman -Rns'
alias search='pacman -Ss'
alias cleanup='sudo pacman -Rns $(pacman -Qtdq) 2>/dev/null'
alias orphans='pacman -Qtdq'
alias mirror='sudo reflector --latest 20 --protocol https --sort rate --save /etc/pacman.d/mirrorlist'

# ============================================
# Better Defaults (using modern alternatives)
# ============================================

# eza (better ls)
alias ls='eza --icons --group-directories-first'
alias ll='eza -la --icons --group-directories-first --git'
alias la='eza -a --icons --group-directories-first'
alias lt='eza --tree --level=2 --icons'
alias l='eza -lh --icons'

# bat (better cat)
alias cat='bat --style=auto'
alias catn='bat --style=plain'
alias catl='bat --style=full'

# ripgrep (better grep) - Use 'rg' directly instead of aliasing grep
# This prevents breaking scripts that depend on grep behavior
# alias grep='rg'  # Disabled to prevent conflicts

# fd (better find) - Use 'fd' directly instead of aliasing find
# This prevents breaking scripts that depend on find behavior
# alias find='fd'  # Disabled to prevent conflicts

# zoxide (better cd)
alias cd='z'
alias cdi='zi'  # interactive

# System monitoring
alias top='btop'
alias htop='btop'
alias du='ncdu'
alias df='df -h'
alias free='free -h'

# ============================================
# Git Aliases
# ============================================

alias g='git'
alias gs='git status'
alias gss='git status -s'
alias ga='git add'
alias gaa='git add --all'
alias gc='git commit -v'
alias gcm='git commit -m'
alias gca='git commit --amend'
alias gcan='git commit --amend --no-edit'
alias gp='git push'
alias gpf='git push --force-with-lease'
alias gpl='git pull'
alias gplr='git pull --rebase'
alias gf='git fetch'
alias gfa='git fetch --all'
alias gco='git checkout'
alias gcb='git checkout -b'
alias gb='git branch'
alias gba='git branch -a'
alias gbd='git branch -d'
alias gbD='git branch -D'
alias gm='git merge'
alias gr='git rebase'
alias gri='git rebase -i'
alias grc='git rebase --continue'
alias gra='git rebase --abort'
alias glog='git log --oneline --graph --decorate'
alias glg='git log --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit'
alias gd='git diff'
alias gdc='git diff --cached'
alias gds='git diff --staged'
alias gst='git stash'
alias gstp='git stash pop'
alias gstl='git stash list'
alias gstd='git stash drop'
alias gsts='git stash show'
alias gcl='git clone'
alias gclean='git clean -fd'
alias grh='git reset HEAD'
alias grhh='git reset HEAD --hard'
alias gundo='git reset --soft HEAD^'
alias lg='lazygit'

# ============================================
# Docker Aliases
# ============================================

alias d='docker'
alias dc='docker-compose'
alias dps='docker ps'
alias dpsa='docker ps -a'
alias di='docker images'
alias dip='docker image prune -a'
alias dv='docker volume ls'
alias dvp='docker volume prune'
alias dn='docker network ls'
alias dex='docker exec -it'
alias drun='docker run -it --rm'
alias dlogs='docker logs -f'
alias dstop='docker stop $(docker ps -q)'
alias drm='docker rm $(docker ps -aq)'
alias drmi='docker rmi $(docker images -q)'
alias dprune='docker system prune -af --volumes'

# ============================================
# Development Aliases
# ============================================

# Python
alias py='python'
alias py3='python3'
alias pip='pip3'
alias pipi='pip install'
alias pipu='pip install --upgrade'
alias venv='python -m venv venv'
alias activate='source venv/bin/activate'
alias deactivate='deactivate'
alias pytest='python -m pytest'
alias black='python -m black'
alias isort='python -m isort'
alias mypy='python -m mypy'

# Node.js
alias ni='npm install'
alias nid='npm install --save-dev'
alias nig='npm install -g'
alias nr='npm run'
alias ns='npm start'
alias nt='npm test'
alias nb='npm run build'
alias nrd='npm run dev'
alias nrs='npm run serve'
alias nls='npm list'
alias nou='npm outdated'
alias nup='npm update'

# pnpm
alias pn='pnpm'
alias pni='pnpm install'
alias pna='pnpm add'
alias pnr='pnpm run'
alias pnt='pnpm test'

# Rust/Cargo
alias cr='cargo run'
alias cb='cargo build'
alias ct='cargo test'
alias cc='cargo check'
alias cu='cargo update'
alias ci='cargo install'
alias cw='cargo watch'
alias cnew='cargo new'

# Go
alias gor='go run'
alias gob='go build'
alias got='go test'
alias gom='go mod'
alias gomi='go mod init'
alias gomt='go mod tidy'

# ============================================
# Tmux Aliases
# ============================================

alias t='tmux'
alias ta='tmux attach -t'
alias tad='tmux attach -d -t'
alias ts='tmux new-session -s'
alias tl='tmux list-sessions'
alias tksv='tmux kill-server'
alias tkss='tmux kill-session -t'

# ============================================
# File Operations
# ============================================

alias cp='cp -iv'
alias mv='mv -iv'
alias rm='rm -iv'
alias mkdir='mkdir -pv'
alias trash='trash-put'

# ============================================
# Navigation
# ============================================

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ~='cd ~'
alias -- -='cd -'

# Quick access to common directories
alias dl='cd ~/Downloads'
alias dc='cd ~/Documents'
alias dev='cd ~/Development'
alias proj='cd ~/Projects'
alias dot='cd ~/dotfiles'

# ============================================
# Editor Aliases
# ============================================

alias vim='nvim'
alias vi='nvim'
alias v='nvim'
alias nv='nvim'

# Quick config edits
alias zshrc='nvim ~/.zshrc'
alias zshenv='nvim ~/.zshenv'
alias aliases='nvim ~/.config/zsh/aliases.zsh'
alias custom='nvim ~/.config/zsh/custom.zsh'
alias nvimrc='nvim ~/.config/nvim/init.lua'
alias tmuxrc='nvim ~/.tmux.conf'
alias gitconfig='nvim ~/.gitconfig'

# Reload configurations
alias reload='source ~/.zshrc'
alias src='source ~/.zshrc'

# ============================================
# System Information
# ============================================

alias sysinfo='neofetch'
alias disk='df -h'
alias diskusage='du -sh *'
alias memory='free -h'
alias cpu='lscpu'
alias temp='sensors'

# ============================================
# Network Aliases
# ============================================

alias ports='netstat -tulanp'
alias listening='lsof -i -P -n | grep LISTEN'
alias myip='curl ifconfig.me'
alias localip='ip addr show'
alias ping='ping -c 5'
alias speedtest='curl -s https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py | python -'

# ============================================
# Misc Aliases
# ============================================

alias h='history'
alias hg='history | grep'
alias path='echo $PATH | tr ":" "\n"'
alias weather='curl wttr.in'
alias moon='curl wttr.in/Moon'
alias cheat='curl cheat.sh'
alias qr='qrencode -t ansiutf8'

# File permissions
alias 644='chmod 644'
alias 755='chmod 755'
alias 777='chmod 777'
alias x='chmod +x'

# Quick server
alias serve='python -m http.server'

# Get week number
alias week='date +%V'

# Clear screen properly
alias cls='clear'
alias c='clear'
