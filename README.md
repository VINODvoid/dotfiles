# Dotfiles

Personal configuration files for my development environment.

## Contents

- **nvim/** - Neovim configuration with LSP, autocompletion, and modern plugins
- **tmux/** - Terminal multiplexer configuration
- **zsh/** - Zsh shell configuration
- **kitty/** - Kitty terminal emulator configuration
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

For a complete list of keybindings and features, see [CHEATSHEET.md](./CHEATSHEET.md).

## Installation

Clone this repository to your home directory:

```bash
git clone https://github.com/yourusername/dotfiles.git ~/dotfiles
```

Then symlink the configurations you want to use:

```bash
# Example: Neovim
ln -s ~/dotfiles/nvim/.config/nvim ~/.config/nvim

# Example: Tmux
ln -s ~/dotfiles/tmux/.config/tmux ~/.config/tmux

# Example: Zsh
ln -s ~/dotfiles/zsh/.zshrc ~/.zshrc
```

Alternatively, use GNU Stow for easier management:

```bash
cd ~/dotfiles
stow nvim
stow tmux
stow zsh
# etc.
```

## Requirements

- Neovim >= 0.9.0
- Git
- A Nerd Font (for icons)
- ripgrep (for Telescope live grep)
- Node.js (for LSP servers)
- Python 3 (for Python LSP and formatters)

## License

Feel free to use and modify these configurations for your own setup.
