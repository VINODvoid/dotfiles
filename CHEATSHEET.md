# Dotfiles Cheatsheet

This repository contains comprehensive configuration files for a modern development environment.

## Documentation Index

### 📚 [TOOLS_CHEATSHEET.md](./TOOLS_CHEATSHEET.md)
Complete reference for all CLI tools and configurations:
- Zsh shell aliases and configuration
- Tmux terminal multiplexer
- WezTerm terminal emulator
- LazyGit TUI
- Btop system monitor
- Modern CLI tools (eza, bat, rg, fd, zoxide, fzf, ncdu)
- Git, Docker, and development aliases
- Workflow examples and tips

### 🚀 [NEOVIM_CHEATSHEET.md](./NEOVIM_CHEATSHEET.md)
Detailed Neovim documentation:
- General keybindings and navigation
- Window and tab management
- File explorer (nvim-tree)
- Fuzzy finder (Telescope)
- LSP features and code intelligence
- Git integration (gitsigns, lazygit, diffview)
- Debugging (nvim-dap)
- All plugin keybindings and features

## Quick Start

### Installation
```bash
cd ~/dotfiles
stow nvim zsh wezterm kitty tmux lazygit btop git
```

### Essential Commands

| Category | Command | Description |
|----------|---------|-------------|
| **Files** | `ll` | List files with icons and git status |
| **Navigation** | `z <dir>` | Smart cd to directory |
| **Search** | `rg "pattern"` | Fast code search |
| **Find** | `fd pattern` | Find files |
| **View** | `bat file.txt` | View file with syntax highlighting |
| **Git** | `lg` | Open LazyGit TUI |
| **System** | `btop` | System monitor |
| **Disk** | `ncdu` | Disk usage analyzer |
| **Edit** | `v file.txt` | Open in Neovim |

### Most Used Keybindings

#### Neovim
- `Space` - Leader key
- `Space + ff` - Find files
- `Space + fs` - Search in files
- `Space + ee` - Toggle file explorer
- `Space + lg` - Open LazyGit
- `gd` - Go to definition
- `K` - Show documentation

#### Tmux (Prefix: Ctrl+a)
- `Ctrl+a |` - Split vertical
- `Ctrl+a -` - Split horizontal
- `Ctrl+a h/j/k/l` - Navigate panes
- `Ctrl+a c` - New window
- `Ctrl+a d` - Detach session

#### WezTerm
- `Ctrl+Shift+t` - New tab
- `Alt+1-9` - Jump to tab
- `Leader \` - Split pane horizontal
- `Leader -` - Split pane vertical

## Configuration Locations

```
~/.config/nvim/          # Neovim
~/.config/tmux/          # Tmux
~/.config/wezterm/       # WezTerm
~/.config/kitty/         # Kitty
~/.config/lazygit/       # LazyGit
~/.config/btop/          # Btop
~/.config/zsh/           # Zsh custom configs
~/.zshrc                 # Zsh main config
~/.gitconfig             # Git config
```

## Tools Overview

| Tool | Purpose | Config Location |
|------|---------|-----------------|
| **Neovim** | Code editor with LSP, plugins | `~/.config/nvim/` |
| **Zsh** | Shell with Oh My Zsh | `~/.zshrc` |
| **Tmux** | Terminal multiplexer | `~/.config/tmux/` |
| **WezTerm** | GPU-accelerated terminal | `~/.config/wezterm/` |
| **Kitty** | Fast terminal emulator | `~/.config/kitty/` |
| **LazyGit** | Git TUI | `~/.config/lazygit/` |
| **Btop** | System monitor | `~/.config/btop/` |
| **eza** | Modern ls replacement | Aliases in zsh |
| **bat** | Cat with syntax highlighting | Aliases in zsh |
| **ripgrep** | Fast search tool | Direct usage |
| **fd** | Fast find replacement | Direct usage |
| **zoxide** | Smart cd command | Enabled in zsh |
| **fzf** | Fuzzy finder | Enabled in zsh |
| **ncdu** | Disk usage analyzer | Direct usage |
| **delta** | Git diff viewer | Git config |

## Theme

All tools use the **Catppuccin Mocha** color scheme for a consistent dark theme:
- Background: `#1e1e2e`
- Foreground: `#cdd6f4`
- Blue: `#89b4fa`
- Red: `#f38ba8`
- Green: `#a6e3a1`
- Yellow: `#f9e2af`

## Font

**JetBrains Mono Nerd Font** is used across all terminals and editors for consistent icon support.

---

For complete documentation, see:
- [TOOLS_CHEATSHEET.md](./TOOLS_CHEATSHEET.md) - CLI tools and configurations
- [NEOVIM_CHEATSHEET.md](./NEOVIM_CHEATSHEET.md) - Neovim keybindings and features
