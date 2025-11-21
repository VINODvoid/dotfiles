# WezTerm Configuration Reference

## Theme & Appearance

**Current Theme**: Catppuccin Mocha (dark)
**Background Opacity**: 0.85 (transparent)
**Font**: JetBrains Mono @ 13pt

### Alternative Themes

You can switch themes by setting the `WEZTERM_THEME` environment variable:

```bash
export WEZTERM_THEME=catppuccin  # Default (Catppuccin Mocha)
export WEZTERM_THEME=tokyonight  # Tokyo Night
export WEZTERM_THEME=dracula     # Dracula
export WEZTERM_THEME=nord        # Nord
export WEZTERM_THEME=onedark     # One Dark
```

## Leader Key

**Leader**: `Ctrl+a` (like tmux)

Press the leader key, release, then press the command key within 1 second.

## Keybindings

### Tab Management

| Keybinding | Action |
|------------|--------|
| `Ctrl+Shift+t` | New tab |
| `Ctrl+Shift+w` | Close tab |
| `Ctrl+Tab` | Next tab |
| `Ctrl+Shift+Tab` | Previous tab |
| `Alt+1` to `Alt+9` | Jump to tab 1-9 |

### Pane Management

| Keybinding | Action |
|------------|--------|
| `Leader+\` | Split pane horizontally |
| `Leader+-` | Split pane vertically |
| `Leader+x` | Close current pane |
| `Leader+z` | Toggle pane zoom (fullscreen) |

### Pane Navigation

| Keybinding | Action |
|------------|--------|
| `Ctrl+Shift+h` | Move to pane on left |
| `Ctrl+Shift+l` | Move to pane on right |
| `Ctrl+Shift+k` | Move to pane above |
| `Ctrl+Shift+j` | Move to pane below |

### Pane Resizing

| Keybinding | Action |
|------------|--------|
| `Ctrl+Shift+←` | Resize pane left |
| `Ctrl+Shift+→` | Resize pane right |
| `Ctrl+Shift+↑` | Resize pane up |
| `Ctrl+Shift+↓` | Resize pane down |

### Font Size

| Keybinding | Action |
|------------|--------|
| `Ctrl+=` | Increase font size |
| `Ctrl+-` | Decrease font size |
| `Ctrl+0` | Reset font size |

### Copy/Paste

| Keybinding | Action |
|------------|--------|
| `Ctrl+Shift+c` | Copy to clipboard |
| `Ctrl+Shift+v` | Paste from clipboard |

### Scrollback

| Keybinding | Action |
|------------|--------|
| `Shift+PageUp` | Scroll up one page |
| `Shift+PageDown` | Scroll down one page |
| `Ctrl+Shift+u` | Scroll up half page |
| `Ctrl+Shift+d` | Scroll down half page |

### Search & Utilities

| Keybinding | Action |
|------------|--------|
| `Ctrl+Shift+f` | Search in scrollback |
| `Leader+p` | Command palette |
| `Leader+r` | Reload configuration |

## Performance Features

- **GPU Acceleration**: WebGpu frontend
- **120 FPS** rendering for smooth scrolling
- **10,000 lines** of scrollback history
- Automatic config reload on changes

## Productivity Tips

1. **Use the Leader Key**: Similar to tmux, `Ctrl+a` followed by commands for pane management
2. **Quick Tab Switching**: Use `Alt+number` for instant tab access
3. **Split Panes**: `Leader+\` (horizontal) or `Leader+-` (vertical) for multitasking
4. **Zoom Panes**: `Leader+z` to focus on one pane temporarily
5. **Command Palette**: `Leader+p` to access all commands with fuzzy search

## Customization

Edit `~/.config/wezterm/config.lua` to customize:
- Opacity: Change `window_background_opacity` (0.0-1.0)
- Theme: Modify `color_scheme` or use environment variable
- Keybindings: Add/modify in the `config.keys` table
- Font: Change `font` and `font_size` settings
