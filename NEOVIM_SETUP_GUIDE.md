# Modern Neovim Setup - Complete Guide

## 🚀 Overview

Your Neovim configuration has been upgraded with the latest and greatest plugins for 2025/2026, including:
- **GitHub Copilot** integration with chat support
- **Modern AI assistants** (Supermaven alternative)
- **VSCode-like features** (breadcrumbs, peek definition, symbol outline)
- **Enhanced LSP** with beautiful UI
- **Performance optimizations** for fast startup
- **Section separators** for better code organization

---

## 📦 New Features Added

### 1. AI Code Completion

#### GitHub Copilot (`copilot.lua`)
- **Location**: `lua/kalki/plugins/copilot.lua`
- **Features**:
  - Inline code suggestions as you type
  - AI-powered code completion
  - Better performance than copilot.vim
- **Keybindings**:
  - `<M-l>` - Accept suggestion
  - `<M-]>` - Next suggestion
  - `<M-[>` - Previous suggestion
  - `<C-]>` - Dismiss suggestion
  - `<M-CR>` - Open Copilot panel

#### GitHub Copilot Chat (`CopilotChat.nvim`)
- **Features**: Chat with GitHub Copilot directly in Neovim
- **Keybindings**:
  - `<leader>cce` - Explain code
  - `<leader>cct` - Generate tests
  - `<leader>ccr` - Review code
  - `<leader>ccR` - Refactor code
  - `<leader>ccn` - Better naming suggestions
  - `<leader>ccd` - Generate documentation
  - `<leader>ccf` - Fix diagnostics
  - `<leader>ccc` - Generate commit message
  - `<leader>ccq` - Toggle chat window

#### Supermaven (Alternative AI)
- **Location**: `lua/kalki/plugins/supermaven.lua`
- **Status**: Disabled by default (enable if you prefer over Copilot)
- **Features**: 1M token context window, faster than Copilot
- **To enable**: Set `enabled = true` in the config

---

### 2. Enhanced Completion (nvim-cmp)

**Improvements**:
- ✅ Integrated Copilot suggestions into completion menu
- ✅ Added `nvim_lua` source for Neovim API completion
- ✅ Added `crates` source for Rust dependencies
- ✅ Added `cmdline` completion
- ✅ Beautiful icons for each source type

**Sources Priority** (highest to lowest):
1. 🤖 Copilot (AI suggestions)
2. λ LSP (Language Server)
3. ⋗ LuaSnip (Snippets)
4. Ω Buffer (Current file)
5.  Crates (Rust dependencies)
6. 🖫 Path (File system)
7.  Neovim Lua API

---

### 3. VSCode-Like Navigation

#### Dropbar - Breadcrumbs
- **Location**: `lua/kalki/plugins/dropbar.lua`
- **Features**: Shows current code context in the winbar (like VSCode breadcrumbs)
- **What it shows**: File → Class → Function → etc.

#### Navbuddy - Keyboard Navigation
- **Location**: `lua/kalki/plugins/navbuddy.lua`
- **Keybinding**: `<leader>nb`
- **Features**: Navigate through code structure with keyboard
- **Usage**: Press `<leader>nb` to open, use `hjkl` to navigate

#### Flash - Enhanced Motion
- **Location**: `lua/kalki/plugins/flash.lua`
- **Keybindings**:
  - `s` - Jump to any location
  - `S` - Jump to treesitter nodes
  - `r` - Remote operations
- **What it does**: Lightning-fast navigation (better than hop/leap)

---

### 4. LSP Enhancements

#### Glance - Peek Definitions
- **Location**: `lua/kalki/plugins/glance.lua`
- **Keybindings**:
  - `gd` - Peek definition
  - `gr` - Peek references
  - `gy` - Peek type definition
  - `gm` - Peek implementation
- **Features**: VSCode-like peek window for definitions/references

#### Inc-rename - Live Rename Preview
- **Location**: `lua/kalki/plugins/inc-rename.lua`
- **Keybinding**: `<leader>rn`
- **Features**: See rename changes in real-time before applying

#### LSP Saga (Existing - Enhanced)
- **Location**: `lua/kalki/plugins/lsp-ui.lua`
- **Features**: Beautiful LSP UI with hover docs, code actions, diagnostics

---

### 5. Additional Quality-of-Life Plugins

#### Rainbow Delimiters
- **Location**: `lua/kalki/plugins/rainbow-delimiters.lua`
- **Features**: Color-coded bracket pairs (easier to track nesting)

#### Smartcolumn
- **Location**: `lua/kalki/plugins/smartcolumn.lua`
- **Features**: Shows column limit at 120 characters

#### Trim.nvim
- **Location**: `lua/kalki/plugins/trim.lua`
- **Features**: Auto-removes trailing whitespace (excludes markdown)

#### Vim-Sleuth
- **Location**: `lua/kalki/plugins/vim-sleuth.lua`
- **Features**: Auto-detects indentation (tabs/spaces, width)

#### Vim-tmux-navigator
- **Location**: `lua/kalki/plugins/vim-tmux-navigator.lua`
- **Keybindings**: `<C-h/j/k/l>` - Navigate between vim splits and tmux panes
- **Features**: Seamless vim ↔ tmux navigation

#### Crates.nvim (Rust)
- **Location**: `lua/kalki/plugins/crates.lua`
- **Features**: Shows available Rust crate versions in Cargo.toml
- **Keybindings**: `<leader>c` prefix (cv=versions, cu=update, etc.)

---

## ⚡ Performance Optimizations

### Lazy.nvim Enhancements
**Location**: `lua/kalki/lazy.lua`

**What was added**:
1. **Disabled unused plugins**: gzip, matchit, netrwPlugin, tarPlugin, etc.
2. **Enabled caching**: Faster module loading
3. **Beautiful icons**: Better visual feedback in Lazy UI
4. **Rounded borders**: Modern UI appearance

**Expected performance**:
- Startup time: ~80-100ms (for a typical file)
- Empty Neovim: ~40ms

---

## 📁 File Organization

All plugin files now have **section separators** for better readability:

```lua
-- ===================================================================
-- Plugin Name - Short Description
-- Longer description of what the plugin does
-- ===================================================================

return {
  -- plugin config
}
```

This makes it easier to:
- 🔍 Scan plugin files quickly
- 📖 Understand plugin purpose at a glance
- 🛠️ Maintain and update configs

---

## 🔧 Installation & Setup

### 1. Prerequisites

#### Required:
- **Neovim** 0.10.0+ (recommended: 0.11.0+)
- **Node.js** v22+ (for Copilot and LSP servers)
- **Git** (for lazy.nvim)
- **ripgrep** (for Telescope)
- **fd** (optional, for better file finding)

#### For GitHub Copilot:
1. Sign up for [GitHub Copilot](https://github.com/features/copilot)
2. In Neovim, run `:Copilot setup`
3. Follow the authentication flow

### 2. First Launch

1. **Start Neovim**: `nvim`
2. **Lazy will automatically**:
   - Download and install all plugins
   - Compile Treesitter parsers
   - Install LSP servers (via Mason)
3. **Restart Neovim** after initial install

### 3. Configure Copilot

```vim
:Copilot setup
:Copilot auth
```

Follow the browser authentication flow.

### 4. Install LSP Servers

```vim
:Mason
```

Install servers for your languages:
- `lua_ls` - Lua
- `ts_ls` - TypeScript/JavaScript
- `pyright` - Python
- `rust_analyzer` - Rust
- `gopls` - Go
- etc.

### 5. Check Health

```vim
:checkhealth
```

This will show any missing dependencies or configuration issues.

---

## 🎯 Quick Start Keybindings

### Leader Key
`<Space>` is your leader key

### Essential Keybindings

#### File Navigation
- `<leader>ff` - Find files
- `<leader>fg` - Live grep (search in files)
- `<leader>fb` - Browse buffers
- `<leader>fh` - Help tags
- `<leader>e` - Toggle file explorer

#### Code Navigation
- `gd` - Go to definition (Glance)
- `gr` - Show references (Glance)
- `K` - Hover documentation
- `<leader>nb` - Open Navbuddy (code structure)
- `s` - Flash jump

#### LSP Actions
- `<leader>ca` - Code actions
- `<leader>rn` - Rename (incremental preview)
- `<leader>ld` - Line diagnostics
- `[d` / `]d` - Previous/next diagnostic

#### AI Assistance
- `<M-l>` - Accept Copilot suggestion
- `<leader>cce` - Explain code with Copilot
- `<leader>cct` - Generate tests
- `<leader>ccr` - Review code
- `<leader>ccq` - Toggle Copilot chat

#### Buffer Management
- `<S-l>` - Next buffer
- `<S-h>` - Previous buffer
- `<leader>x` - Close buffer
- `<leader>b` - New buffer

#### Git
- `<leader>gb` - Git blame line
- `<leader>gp` - Preview hunk
- `<leader>gr` - Reset hunk
- `<leader>gs` - Stage hunk

---

## 🎨 Customization

### Changing Colorscheme

**Method 1**: Interactive selector
```vim
<leader>cs
```

**Method 2**: Edit `lua/kalki/plugins/colorscheme.lua`

### Disabling Plugins

To disable any plugin, add `enabled = false`:

```lua
return {
  "plugin/name",
  enabled = false,  -- Disable this plugin
  -- rest of config
}
```

### Adding New Plugins

Create a new file in `lua/kalki/plugins/`:

```lua
-- ===================================================================
-- Plugin Name - Description
-- What it does
-- ===================================================================

return {
  "author/plugin-name",
  event = "VeryLazy",  -- Lazy load
  config = function()
    require("plugin-name").setup({
      -- your config
    })
  end,
}
```

---

## 🐛 Troubleshooting

### Copilot Not Working
1. Check Node.js version: `node --version` (must be 22+)
2. Re-authenticate: `:Copilot auth`
3. Check status: `:Copilot status`

### LSP Not Starting
1. Check Mason: `:Mason`
2. Install required server
3. Check `:LspInfo` for active servers
4. Restart Neovim

### Slow Startup
1. Check startup time: `nvim --startuptime startup.log`
2. Disable heavy plugins (set `enabled = false`)
3. Use `:Lazy profile` to identify slow plugins

### Plugin Errors
1. Update plugins: `:Lazy sync`
2. Clear cache: `:Lazy clean`
3. Check `:checkhealth`

---

## 📊 What Changed From Previous Setup

### New Plugins
1. ✅ **copilot.lua** - GitHub Copilot integration
2. ✅ **CopilotChat.nvim** - AI chat interface
3. ✅ **supermaven.nvim** - Alternative AI (disabled)
4. ✅ **navbuddy** - Keyboard code navigation
5. ✅ **flash.nvim** - Enhanced motion
6. ✅ **glance.nvim** - Peek definitions/references
7. ✅ **inc-rename.nvim** - Live rename preview
8. ✅ **rainbow-delimiters** - Colored brackets
9. ✅ **smartcolumn** - Column indicator
10. ✅ **trim.nvim** - Auto whitespace trimming
11. ✅ **vim-sleuth** - Auto indent detection
12. ✅ **vim-tmux-navigator** - Tmux integration
13. ✅ **crates.nvim** - Rust dependency manager

### Updated Configs
1. 🔄 **nvim-cmp** - Added Copilot integration, more sources
2. 🔄 **lazy.nvim** - Performance optimizations, better UI
3. 🔄 **All plugins** - Added section separators

### Performance
- ⚡ Disabled unused Vim plugins
- ⚡ Enabled bytecode caching
- ⚡ Optimized lazy loading

---

## 📚 Resources

### Documentation
- [Lazy.nvim Docs](https://github.com/folke/lazy.nvim)
- [GitHub Copilot Docs](https://docs.github.com/en/copilot)
- [Neovim LSP Guide](https://neovim.io/doc/user/lsp.html)

### Community
- [r/neovim](https://reddit.com/r/neovim)
- [Neovim Discourse](https://neovim.discourse.group/)
- [Awesome Neovim](https://github.com/rockerBOO/awesome-neovim)

### Plugin Galleries
- [Dotfyle - Top Plugins](https://dotfyle.com/neovim/plugins/top)
- [Dotfyle - Trending](https://dotfyle.com/neovim/plugins/trending)

---

## 🎉 Next Steps

1. **Learn the keybindings**: Start with the essential ones above
2. **Try Copilot**: Write some code and see the AI suggestions
3. **Explore Telescope**: `<leader>ff` to find files
4. **Use Flash motion**: Press `s` and see the magic
5. **Customize**: Make it yours! Change colors, add plugins, etc.

---

## 💡 Pro Tips

1. **Use `<leader>ccq`** to chat with Copilot about your code
2. **Press `K`** twice to jump into hover docs window
3. **Use `gd`** in Glance, then press `v`/`s`/`t` to open in split/vsplit/tab
4. **Run `:Lazy profile`** to optimize plugin startup times
5. **Create custom snippets** in `~/.config/nvim/snippets/`
6. **Use `<leader>cs`** to quickly switch between colorschemes

---

## 🙏 Credits

This configuration uses these amazing plugins:
- [lazy.nvim](https://github.com/folke/lazy.nvim) by folke
- [copilot.lua](https://github.com/zbirenbaum/copilot.lua) by zbirenbaum
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) by hrsh7th
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) by nvim-telescope
- [lspsaga.nvim](https://github.com/nvimdev/lspsaga.nvim) by nvimdev
- [dropbar.nvim](https://github.com/Bekaboo/dropbar.nvim) by Bekaboo
- And many more amazing plugins!

---

**Enjoy your modern Neovim setup! 🚀**
