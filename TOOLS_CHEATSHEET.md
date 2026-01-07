# Dotfiles Tools Cheatsheet

Complete reference for all tools configured in this dotfiles repository.

---

## Table of Contents

1. [Zsh & Shell Aliases](#zsh--shell-aliases)
2. [Tmux](#tmux)
3. [WezTerm](#wezterm)
4. [LazyGit](#lazygit)
5. [Btop](#btop)
6. [Modern CLI Tools](#modern-cli-tools)
7. [Git Aliases](#git-aliases)
8. [Docker Aliases](#docker-aliases)
9. [Development Aliases](#development-aliases)

---

## Zsh & Shell Aliases

### Package Management (Arch Linux)

| Alias | Command | Description |
|-------|---------|-------------|
| `update` | `sudo pacman -Syu && yay -Syu` | Update all packages |
| `install` | `sudo pacman -S` | Install package |
| `remove` | `sudo pacman -Rns` | Remove package with dependencies |
| `search` | `pacman -Ss` | Search for package |
| `cleanup` | `sudo pacman -Rns $(pacman -Qtdq)` | Remove orphaned packages |
| `orphans` | `pacman -Qtdq` | List orphaned packages |
| `mirror` | `sudo reflector --latest 20...` | Update mirror list |

### Modern CLI Tools

| Alias | Command | Description |
|-------|---------|-------------|
| `ls` | `eza --icons --group-directories-first` | List files with icons |
| `ll` | `eza -la --icons --git` | Detailed list with git status |
| `la` | `eza -a --icons` | List all files |
| `lt` | `eza --tree --level=2` | Tree view (2 levels) |
| `l` | `eza -lh --icons` | Long format with human sizes |
| `cat` | `bat --style=auto` | Cat with syntax highlighting |
| `catn` | `bat --style=plain` | Plain bat output |
| `catl` | `bat --style=full` | Full bat styling |
| `cd` | `z` | Smart cd with zoxide |
| `cdi` | `zi` | Interactive zoxide |
| `top` / `htop` | `btop` | System monitor |
| `du` | `ncdu` | Disk usage analyzer |

**Note:** `grep` and `find` are NOT aliased to prevent breaking scripts. Use `rg` and `fd` directly.

### File Operations

| Alias | Command | Description |
|-------|---------|-------------|
| `cp` | `cp -iv` | Interactive verbose copy |
| `mv` | `mv -iv` | Interactive verbose move |
| `rm` | `rm -iv` | Interactive verbose remove |
| `mkdir` | `mkdir -pv` | Create parent dirs + verbose |
| `trash` | `trash-put` | Move to trash instead of delete |

### Navigation

| Alias | Command | Description |
|-------|---------|-------------|
| `..` | `cd ..` | Up one directory |
| `...` | `cd ../..` | Up two directories |
| `....` | `cd ../../..` | Up three directories |
| `~` | `cd ~` | Go to home |
| `-` | `cd -` | Go to previous directory |
| `dl` | `cd ~/Downloads` | Go to Downloads |
| `dc` | `cd ~/Documents` | Go to Documents |
| `dev` | `cd ~/Development` | Go to Development |
| `proj` | `cd ~/Projects` | Go to Projects |
| `dot` | `cd ~/dotfiles` | Go to dotfiles |

### Editor Shortcuts

| Alias | Command | Description |
|-------|---------|-------------|
| `vim` / `vi` / `v` | `nvim` | Open Neovim |
| `zshrc` | `nvim ~/.zshrc` | Edit zsh config |
| `aliases` | `nvim ~/.config/zsh/aliases.zsh` | Edit aliases |
| `nvimrc` | `nvim ~/.config/nvim/init.lua` | Edit nvim config |
| `tmuxrc` | `nvim ~/.tmux.conf` | Edit tmux config |
| `gitconfig` | `nvim ~/.gitconfig` | Edit git config |
| `reload` / `src` | `source ~/.zshrc` | Reload zsh config |

### System Information

| Alias | Command | Description |
|-------|---------|-------------|
| `sysinfo` | `neofetch` | System information |
| `disk` | `df -h` | Disk space |
| `diskusage` | `du -sh *` | Size of current dir contents |
| `memory` | `free -h` | Memory usage |
| `cpu` | `lscpu` | CPU information |
| `temp` | `sensors` | Temperature sensors |

### Network

| Alias | Command | Description |
|-------|---------|-------------|
| `ports` | `netstat -tulanp` | Show all ports |
| `listening` | `lsof -i -P -n \| grep LISTEN` | Show listening ports |
| `myip` | `curl ifconfig.me` | Show public IP |
| `localip` | `ip addr show` | Show local IP |
| `ping` | `ping -c 5` | Ping 5 times |

### Misc

| Alias | Command | Description |
|-------|---------|-------------|
| `h` | `history` | Show history |
| `hg` | `history \| grep` | Search history |
| `path` | `echo $PATH \| tr ":" "\n"` | Show PATH entries |
| `weather` | `curl wttr.in` | Show weather |
| `moon` | `curl wttr.in/Moon` | Show moon phase |
| `qr` | `qrencode -t ansiutf8` | Generate QR code |
| `serve` | `python -m http.server` | Start HTTP server |
| `cls` / `c` | `clear` | Clear screen |
| `x` | `chmod +x` | Make executable |

---

## Tmux

**Prefix Key:** `Ctrl+a` (instead of default `Ctrl+b`)

### Session Management

| Key | Action |
|-----|--------|
| `tmux` | Start new session |
| `tmux new -s <name>` | Start named session |
| `tmux attach -t <name>` | Attach to session |
| `tmux ls` | List sessions |
| `tmux kill-session -t <name>` | Kill session |
| `Ctrl+a d` | Detach from session |

**Aliases available:** `t`, `ta`, `ts`, `tl`, `tkss`

### Window Management

| Key | Action |
|-----|--------|
| `Ctrl+a c` | Create new window |
| `Ctrl+a ,` | Rename window |
| `Ctrl+a w` | List windows |
| `Ctrl+a n` | Next window |
| `Ctrl+a p` | Previous window |
| `Ctrl+a 0-9` | Switch to window number |
| `Ctrl+a &` | Kill window |
| `Ctrl+a X` | Kill window (custom, no confirm) |
| `Shift+Left` | Previous window |
| `Shift+Right` | Next window |
| `Ctrl+Shift+Left` | Move window left |
| `Ctrl+Shift+Right` | Move window right |

### Pane Management

| Key | Action |
|-----|--------|
| `Ctrl+a \|` | Split vertically |
| `Ctrl+a -` | Split horizontally |
| `Ctrl+a x` | Kill pane (no confirm) |
| `Ctrl+a z` | Toggle pane zoom |
| `Alt+z` | Toggle pane zoom (no prefix) |
| `Ctrl+a h/j/k/l` | Navigate panes (vim-style) |
| `Alt+Arrow` | Navigate panes |
| `Ctrl+a H/J/K/L` | Resize pane |

### Copy Mode (Vi-style)

| Key | Action |
|-----|--------|
| `Ctrl+a [` | Enter copy mode |
| `Space` | Start selection |
| `v` | Start selection (vi-style) |
| `y` | Copy selection |
| `Enter` | Copy and exit |
| `Ctrl+v` | Rectangle selection |
| `q` | Exit copy mode |

### Other

| Key | Action |
|-----|--------|
| `Ctrl+a r` | Reload config |
| `Ctrl+a ?` | List all keybindings |
| `Ctrl+a :` | Command prompt |

### Tmux Plugins (via TPM)

- **tmux-sensible** - Sensible defaults
- **tmux-resurrect** - Save/restore sessions (`Ctrl+a Ctrl+s` / `Ctrl+a Ctrl+r`)
- **tmux-continuum** - Auto-save sessions every 15 minutes
- **tmux-yank** - Better clipboard integration
- **vim-tmux-navigator** - Seamless vim/tmux navigation

---

## WezTerm

**Leader Key:** `Ctrl+a` (timeout: 1000ms)

### Tab Management

| Key | Action |
|-----|--------|
| `Ctrl+Shift+t` | New tab |
| `Ctrl+Shift+w` | Close tab |
| `Ctrl+Tab` | Next tab |
| `Ctrl+Shift+Tab` | Previous tab |
| `Alt+1-9` | Jump to tab 1-9 |

### Pane Management

| Key | Action |
|-----|--------|
| `Leader \` | Split horizontal |
| `Leader -` | Split vertical |
| `Leader x` | Close pane |
| `Leader z` | Toggle pane zoom |
| `Ctrl+Shift+h/j/k/l` | Navigate panes |
| `Ctrl+Shift+Arrow` | Resize panes |

### Font & Display

| Key | Action |
|-----|--------|
| `Ctrl+=` | Increase font size |
| `Ctrl+-` | Decrease font size |
| `Ctrl+0` | Reset font size |

### Copy/Paste & Search

| Key | Action |
|-----|--------|
| `Ctrl+Shift+c` | Copy |
| `Ctrl+Shift+v` | Paste |
| `Ctrl+Shift+f` | Search |
| `Shift+PageUp/Down` | Scroll by page |
| `Ctrl+Shift+u/d` | Scroll by half page |

### Other

| Key | Action |
|-----|--------|
| `Leader r` | Reload configuration |
| `Leader p` | Command palette |
| `Ctrl+Enter` | Send Ctrl+Enter to terminal |
| `Shift+Enter` | Send Shift+Enter to terminal |

---

## LazyGit

**Launch:** `lazygit` or alias `lg` or from Neovim: `<leader>lg`

### Global Navigation

| Key | Action |
|-----|--------|
| `Tab` | Toggle between panels |
| `h/l` or `←/→` | Previous/next panel |
| `j/k` or `↓/↑` | Next/previous item |
| `<` / `>` | Scroll to top/bottom |
| `q` | Quit |
| `Q` | Quit without changing directory |
| `Esc` | Return/cancel |
| `/` | Start search |
| `n` / `N` | Next/previous match |

### Files Panel

| Key | Action |
|-----|--------|
| `Space` | Stage/unstage file |
| `a` | Stage/unstage all |
| `d` | View delete options |
| `e` | Edit file |
| `o` | Open file |
| `c` | Commit changes |
| `C` | Commit with editor |
| `A` | Amend commit |
| `Shift+c` | Commit without hooks |
| `t` | Add tag |

### Commits Panel

| Key | Action |
|-----|--------|
| `Space` | Checkout commit |
| `d` | Delete commit |
| `r` | Reword commit |
| `R` | Reword with editor |
| `g` | Reset to this commit |
| `c` | Copy commit (cherry-pick) |
| `v` | Paste commit (cherry-pick) |
| `Shift+r` | Revert commit |
| `m` | Create rebase menu |
| `Ctrl+r` | Interactive rebase |

### Branches Panel

| Key | Action |
|-----|--------|
| `Space` | Checkout branch |
| `n` | New branch |
| `d` | Delete branch |
| `r` | Rebase onto branch |
| `M` | Merge into current branch |
| `F` | Fast-forward |
| `g` | View reset options |
| `p` | Pull |
| `P` | Push |
| `Ctrl+P` | Force push with lease |

### Stash Panel

| Key | Action |
|-----|--------|
| `Space` | Apply stash |
| `g` | Pop stash |
| `d` | Drop stash |
| `n` | New branch from stash |

### Other

| Key | Action |
|-----|--------|
| `R` | Refresh |
| `x` | Open menu |
| `?` | Open help |
| `:` | Execute custom command |
| `@` | Open extras menu |
| `z` | Undo |
| `Ctrl+z` | Redo |
| `W` | Diff menu |
| `Ctrl+w` | Toggle whitespace |

---

## Btop

**Launch:** `btop` or aliases `top` / `htop`

### Navigation

| Key | Action |
|-----|--------|
| `Esc` / `q` | Quit |
| `m` | Main menu |
| `Tab` | Switch between panels |
| `↑/↓` or `j/k` | Move selection |
| `Home` / `End` | Jump to start/end |
| `PgUp` / `PgDn` | Page up/down |

### Process Management

| Key | Action |
|-----|--------|
| `t` | Toggle tree view |
| `k` | Kill process (SIGTERM) |
| `K` | Kill process (SIGKILL) |
| `i` | Toggle process case sensitivity |
| `f` | Filter processes |
| `r` | Reverse sorting order |
| `c` | Change sort column |
| `e` | Toggle process command/name |
| `Space` | Select process |

### View Options

| Key | Action |
|-----|--------|
| `+` / `-` | Scale graphs up/down |
| `h` | Help menu |
| `o` | Options menu |
| `F2` | Options |
| `F5` | Toggle tree mode |
| `F6` | Sorting options |

---

## Modern CLI Tools

### eza (Better ls)

```bash
eza                              # List files
eza -la                          # Long format, all files
eza --tree                       # Tree view
eza --tree --level=3             # Tree view, 3 levels deep
eza -la --git                    # Show git status
eza --icons                      # Show icons
eza --group-directories-first    # Group directories first
```

### bat (Better cat)

```bash
bat file.txt                     # View file with highlighting
bat -p file.txt                  # Plain output (no decorations)
bat -A file.txt                  # Show all characters
bat --theme=Monokai              # Use specific theme
bat --list-themes                # List available themes
bat file1.txt file2.txt          # View multiple files
```

### ripgrep (rg)

```bash
rg "pattern"                     # Search in current directory
rg "pattern" path/               # Search in specific path
rg -i "pattern"                  # Case insensitive
rg -w "pattern"                  # Match whole words
rg -l "pattern"                  # List files with matches
rg -t py "pattern"               # Search only Python files
rg -T js "pattern"               # Exclude JavaScript files
rg -A 3 -B 3 "pattern"          # Show 3 lines context
```

### fd (Better find)

```bash
fd pattern                       # Find files/directories
fd -e txt                        # Find by extension
fd -t f pattern                  # Find files only
fd -t d pattern                  # Find directories only
fd -H pattern                    # Include hidden files
fd -I pattern                    # Don't respect .gitignore
fd -x command                    # Execute command on results
```

### zoxide (Smart cd)

```bash
z foo                            # Jump to directory matching "foo"
z foo bar                        # Jump to directory matching "foo" and "bar"
zi                              # Interactive selection
zoxide query foo                 # Query without jumping
zoxide remove foo                # Remove directory from database
```

### fzf (Fuzzy finder)

```bash
fzf                             # Interactive file finder
<command> | fzf                 # Filter command output
vim $(fzf)                      # Open file in vim
cd $(fd -t d | fzf)             # Change to selected directory

# Keybindings (when enabled)
Ctrl+t                          # Paste selected files
Ctrl+r                          # Paste from history
Alt+c                           # cd into selected directory
```

### ncdu (Disk usage)

```bash
ncdu                            # Analyze current directory
ncdu /path                      # Analyze specific path
ncdu -x                         # Don't cross filesystem boundaries
ncdu --exclude .git             # Exclude directories

# Inside ncdu
d                               # Delete file/directory
g                               # Show percentage graph
n                               # Sort by name
s                               # Sort by size
```

---

## Git Aliases

| Alias | Command | Description |
|-------|---------|-------------|
| `g` | `git` | Git shortcut |
| `gs` | `git status` | Status |
| `gss` | `git status -s` | Short status |
| `ga` | `git add` | Add file |
| `gaa` | `git add --all` | Add all |
| `gc` | `git commit -v` | Commit with diff |
| `gcm` | `git commit -m` | Commit with message |
| `gca` | `git commit --amend` | Amend commit |
| `gcan` | `git commit --amend --no-edit` | Amend without editing |
| `gp` | `git push` | Push |
| `gpf` | `git push --force-with-lease` | Force push safely |
| `gpl` | `git pull` | Pull |
| `gplr` | `git pull --rebase` | Pull with rebase |
| `gf` | `git fetch` | Fetch |
| `gfa` | `git fetch --all` | Fetch all |
| `gco` | `git checkout` | Checkout |
| `gcb` | `git checkout -b` | Create and checkout branch |
| `gb` | `git branch` | List branches |
| `gba` | `git branch -a` | List all branches |
| `gbd` | `git branch -d` | Delete branch |
| `gbD` | `git branch -D` | Force delete branch |
| `gm` | `git merge` | Merge |
| `gr` | `git rebase` | Rebase |
| `gri` | `git rebase -i` | Interactive rebase |
| `grc` | `git rebase --continue` | Continue rebase |
| `gra` | `git rebase --abort` | Abort rebase |
| `glog` | `git log --oneline --graph --decorate` | Simple log |
| `glg` | `git log --graph --pretty...` | Detailed log |
| `gd` | `git diff` | Diff |
| `gdc` | `git diff --cached` | Diff staged |
| `gds` | `git diff --staged` | Diff staged |
| `gst` | `git stash` | Stash changes |
| `gstp` | `git stash pop` | Pop stash |
| `gstl` | `git stash list` | List stashes |
| `gcl` | `git clone` | Clone repository |
| `gundo` | `git reset --soft HEAD^` | Undo last commit |
| `lg` | `lazygit` | Open LazyGit |

---

## Docker Aliases

| Alias | Command | Description |
|-------|---------|-------------|
| `d` | `docker` | Docker shortcut |
| `dc` | `docker-compose` | Docker compose |
| `dps` | `docker ps` | List containers |
| `dpsa` | `docker ps -a` | List all containers |
| `di` | `docker images` | List images |
| `dip` | `docker image prune -a` | Remove unused images |
| `dv` | `docker volume ls` | List volumes |
| `dvp` | `docker volume prune` | Remove unused volumes |
| `dn` | `docker network ls` | List networks |
| `dex` | `docker exec -it` | Execute in container |
| `drun` | `docker run -it --rm` | Run container interactively |
| `dlogs` | `docker logs -f` | Follow container logs |
| `dstop` | `docker stop $(docker ps -q)` | Stop all containers |
| `drm` | `docker rm $(docker ps -aq)` | Remove all containers |
| `drmi` | `docker rmi $(docker images -q)` | Remove all images |
| `dprune` | `docker system prune -af --volumes` | Clean everything |

---

## Development Aliases

### Python

| Alias | Command |
|-------|---------|
| `py` | `python` |
| `py3` | `python3` |
| `pip` | `pip3` |
| `pipi` | `pip install` |
| `pipu` | `pip install --upgrade` |
| `venv` | `python -m venv venv` |
| `activate` | `source venv/bin/activate` |
| `pytest` | `python -m pytest` |
| `black` | `python -m black` |
| `isort` | `python -m isort` |
| `mypy` | `python -m mypy` |

### Node.js

| Alias | Command |
|-------|---------|
| `ni` | `npm install` |
| `nid` | `npm install --save-dev` |
| `nig` | `npm install -g` |
| `nr` | `npm run` |
| `ns` | `npm start` |
| `nt` | `npm test` |
| `nb` | `npm run build` |
| `nrd` | `npm run dev` |
| `nrs` | `npm run serve` |
| `nou` | `npm outdated` |
| `nup` | `npm update` |

### pnpm

| Alias | Command |
|-------|---------|
| `pn` | `pnpm` |
| `pni` | `pnpm install` |
| `pna` | `pnpm add` |
| `pnr` | `pnpm run` |
| `pnt` | `pnpm test` |

### Rust/Cargo

| Alias | Command |
|-------|---------|
| `cr` | `cargo run` |
| `cb` | `cargo build` |
| `ct` | `cargo test` |
| `cc` | `cargo check` |
| `cu` | `cargo update` |
| `ci` | `cargo install` |
| `cw` | `cargo watch` |
| `cnew` | `cargo new` |

### Go

| Alias | Command |
|-------|---------|
| `gor` | `go run` |
| `gob` | `go build` |
| `got` | `go test` |
| `gom` | `go mod` |
| `gomi` | `go mod init` |
| `gomt` | `go mod tidy` |

---

## Quick Tips

### Workflow Examples

**1. Starting a new development session:**
```bash
cd ~/Projects/myproject      # Or use: z myproject
tmux new -s dev             # Start tmux session
nvim .                      # Open Neovim
```

**2. Searching for code:**
```bash
rg "TODO"                   # Find all TODOs
fd -e js | fzf              # Find JS files interactively
bat $(fd -e py | fzf)       # View selected Python file
```

**3. Git workflow:**
```bash
gs                          # Check status
ga .                        # Stage changes
gcm "feat: add feature"     # Commit
lg                          # Review in LazyGit
gp                          # Push
```

**4. System monitoring:**
```bash
btop                        # System monitor
ncdu                        # Check disk usage
```

For Neovim keybindings and features, see [NEOVIM_CHEATSHEET.md](./NEOVIM_CHEATSHEET.md).
