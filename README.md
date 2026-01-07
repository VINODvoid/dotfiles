# Dotfiles

Personal configuration files for my development environment.

## Contents

- **nvim/** - Neovim configuration with LSP, autocompletion, and modern plugins
- **tmux/** - Terminal multiplexer configuration
- **zsh/** - Zsh shell configuration
- **kitty/** - Kitty terminal emulator configuration
- **wezterm/** - WezTerm terminal emulator configuration
- **git/** - Git configuration and settings
- **lazygit/** - LazyGit TUI configuration
- **btop/** - System monitor configuration

## Neovim Setup

The Neovim configuration includes:
- LSP support for multiple languages (TypeScript, Python, C/C++, Lua, and more)
- Auto-completion with nvim-cmp
- Fuzzy finding with Telescope
- Git integration (gitsigns, lazygit, diffview)
- Debugging support with nvim-dap
- Code formatting with conform.nvim
- File explorer with nvim-tree
- GitHub Copilot integration
- Enhanced navigation with Flash
- Symbols outline with Aerial
- Project-wide search and replace with Spectre
- And many more features

For keybindings and features documentation:
- **[TOOLS_CHEATSHEET.md](./TOOLS_CHEATSHEET.md)** - Complete reference for all CLI tools, shell aliases, tmux, wezterm, lazygit, btop, and more
- **[NEOVIM_CHEATSHEET.md](./NEOVIM_CHEATSHEET.md)** - Detailed Neovim keybindings and plugin documentation

## Installation

Clone this repository to your home directory:

```bash
git clone https://github.com/yourusername/dotfiles.git ~/dotfiles
```

### Using GNU Stow (Recommended)

GNU Stow makes it easy to manage dotfiles by creating symlinks:

```bash
cd ~/dotfiles

# Install all configurations
stow nvim zsh wezterm kitty tmux lazygit btop git

# Or install individually
stow nvim      # Neovim
stow zsh       # Zsh shell
stow wezterm   # WezTerm terminal
stow kitty     # Kitty terminal
stow tmux      # Tmux
stow lazygit   # LazyGit
stow btop      # System monitor
stow git       # Git config
```

### Manual Installation

Alternatively, symlink configurations manually:

```bash
# Neovim
ln -s ~/dotfiles/nvim/.config/nvim ~/.config/nvim

# Tmux
ln -s ~/dotfiles/tmux/.config/tmux ~/.config/tmux

# LazyGit
ln -s ~/dotfiles/lazygit/.config/lazygit ~/.config/lazygit

# Btop
ln -s ~/dotfiles/btop/.config/btop ~/.config/btop

# Zsh
ln -s ~/dotfiles/zsh/.zshrc ~/.zshrc
ln -s ~/dotfiles/zsh/.zshenv ~/.zshenv
ln -s ~/dotfiles/zsh/.config/zsh ~/.config/zsh

# WezTerm
ln -s ~/dotfiles/wezterm/.config/wezterm ~/.config/wezterm

# Kitty
ln -s ~/dotfiles/kitty/.config/kitty ~/.config/kitty

# Git
ln -s ~/dotfiles/git/.config/git/config ~/.gitconfig
```

### Post-Installation Steps

#### Tmux Plugin Manager (TPM)
```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
# Then in tmux: prefix + I to install plugins
```

#### Oh My Zsh
```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# Install additional plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-completions
```

## Requirements

### Essential
- **Neovim** >= 0.9.0
- **Git**
- **Zsh**
- **Tmux**
- **A Nerd Font** (JetBrains Mono Nerd Font recommended)

### Modern CLI Tools (Recommended)
- **eza** - Better ls alternative
- **bat** - Better cat with syntax highlighting
- **ripgrep (rg)** - Fast search tool
- **fd** - Better find alternative
- **zoxide** - Smarter cd command
- **fzf** - Fuzzy finder
- **btop** - System monitor
- **lazygit** - Git TUI
- **ncdu** - Disk usage analyzer
- **delta** - Better git diff viewer

### Development Tools
- **Node.js** (for LSP servers)
- **Python 3** (for Python LSP and formatters)
- **Rust** (for various CLI tools)
- **Go** (optional, for Go development)

### Installation (Arch Linux)
```bash
# Essential tools
sudo pacman -S neovim git zsh tmux ttf-jetbrains-mono-nerd

# Modern CLI tools
sudo pacman -S eza bat ripgrep fd zoxide fzf btop lazygit ncdu git-delta

# Development tools
sudo pacman -S nodejs npm python python-pip rustup go
```

## License

Feel free to use and modify these configurations for your own setup.
