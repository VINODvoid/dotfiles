# Tmux Aesthetic Design

This tmux configuration features a beautiful, modern status bar with Catppuccin Mocha theme and useful system information.

## Visual Overview

```
┌─────────────────────────────────────────────────────────────────────────────────┐
│ Status Bar Layout                                                               │
└─────────────────────────────────────────────────────────────────────────────────┘

LEFT SIDE:
┌──────────────┬─────────────────┐
│ 󰍹 session   │ 󰣇 hostname     │
└──────────────┴─────────────────┘
  Blue bg        Surface bg

WINDOWS (Center):
┌───────────────┬─────────────┬───────────────┐
│  1 nvim      │  2 bash    │  3 btop 󰁌    │  <- Zoomed indicator
└───────────────┴─────────────┴───────────────┘
  Mauve bg       Surface bg     Surface bg
  (active)       (inactive)     (inactive)

RIGHT SIDE:
┌─────────┬─────────┬─────────┬──────────┬──────────────┬────────────┐
│ 󰐃 PREFIX│ 󰻠  45% │ 󰍛  62% │ 󰂄  85%  │ 󰃰 Mon Jan 07│   15:30   │
└─────────┴─────────┴─────────┴──────────┴──────────────┴────────────┘
  Status    CPU       RAM      Battery      Date           Time
  indicator                                               Blue bg
```

## Features

### Left Side (Session Info)
- **󰍹 Session Name** - Current tmux session (Blue background)
- **󰣇 Hostname** - Machine name (Surface background)

### Center (Windows)
- **Window Number + Name** - e.g., "1 nvim", "2 bash"
- **Active Window** - Purple/Mauve background
- **Inactive Windows** - Gray surface background
- **Zoom Indicator 󰁌** - Shows when pane is zoomed
- **Powerline Separators** -  for smooth transitions

### Right Side (System Info)
1. **Status Indicators**:
   - 󰐃 PREFIX (Red) - When prefix key is pressed
   - 󰁌 ZOOM (Yellow) - When window is zoomed
   - 󰀘 Normal (Green) - Default state

2. **󰻠 CPU Usage** - Live CPU percentage with color coding:
   - Green (0-30%): Low usage
   - Yellow (30-80%): Medium usage
   - Red (80-100%): High usage

3. **󰍛 RAM Usage** - Memory consumption percentage
   - Same color coding as CPU

4. **Battery Status** - Battery icon and percentage:
   - 󰂄 Charging
   - 󰁹 Discharging
   -  Fully charged
   - Icons change based on charge level

5. **󰃰 Date** - Day and date (e.g., "Mon Jan 07")

6. ** Time** - Current time (Blue background)

## Color Palette (Catppuccin Mocha)

| Color | Hex | Usage |
|-------|-----|-------|
| Base | #1e1e2e | Main background |
| Surface0 | #313244 | Inactive windows, secondary sections |
| Surface1 | #45475a | Tertiary sections |
| Text | #cdd6f4 | Primary text |
| Subtext0 | #a6adc8 | Inactive window numbers |
| Blue | #89b4fa | Session name, time, active pane border |
| Mauve | #cba6f7 | Active window |
| Green | #a6e3a1 | Normal status, low usage |
| Yellow | #f9e2af | Zoom indicator, medium usage |
| Red | #f38ba8 | Prefix indicator, high usage |

## Icons Used

### Nerd Font Icons
- 󰍹 - Sessions
- 󰣇 - Hostname/Computer
- 󰻠 - CPU
- 󰍛 - Memory/RAM
- 󰂄 󰁹  - Battery states
- 󰃰 - Calendar
-  - Clock
- 󰐃 - Prefix key indicator
- 󰁌 - Zoom/Maximize
- 󰀘 - Check/OK
-  - Powerline separator

**Note:** Requires a Nerd Font (e.g., JetBrains Mono Nerd Font) for icons to display correctly.

## Pane Borders

- **Inactive Panes**: Dark gray (#313244)
- **Active Pane**: Blue (#89b4fa)
- No border labels by default (can be enabled with pane-border-status)

## Additional Visual Enhancements

### Window Activity
- Windows with activity show in yellow
- Helps identify background tasks

### Message Style
- Messages appear in a styled box
- Text: #cdd6f4 on #313244 background
- Bold text for visibility

### Clock Mode
- Blue colored digits when showing clock (Ctrl+a t)

## Installation & Usage

### 1. Install TPM (Tmux Plugin Manager)
```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

### 2. Start Tmux
```bash
tmux
```

### 3. Install Plugins
Press: `Ctrl+a` then `Shift+I` (capital I)

This will install:
- tmux-cpu - CPU and RAM monitoring
- tmux-battery - Battery status
- tmux-resurrect - Save/restore sessions
- tmux-continuum - Auto-save sessions
- tmux-yank - Better clipboard
- vim-tmux-navigator - Seamless vim navigation

### 4. Reload Config
```bash
# Inside tmux
Ctrl+a r
```

## Customization

### Change Status Bar Position
```bash
# In tmux.conf
set -g status-position top  # Move to top
```

### Enable Pane Borders Labels
```bash
# In tmux.conf
set -g pane-border-status top  # or bottom
```

### Modify Update Interval
```bash
# In tmux.conf (line 38)
set -g status-interval 5  # Update every 5 seconds (default)
set -g status-interval 2  # Update every 2 seconds (more responsive)
```

### Hide Battery (for Desktops)
Remove or comment out the battery section in status-right:
```bash
# Remove this line:
#[fg=#{@ctp-text},bg=#{@ctp-surface1}] #{battery_icon_status}#{battery_percentage} \
```

## Troubleshooting

### Icons not showing?
- Install a Nerd Font: `sudo pacman -S ttf-jetbrains-mono-nerd`
- Configure your terminal to use the Nerd Font

### Plugins not working?
```bash
# Reinstall plugins
Ctrl+a I (capital i)

# Or manually
cd ~/.tmux/plugins/tpm
git pull
```

### Status bar looks broken?
- Ensure terminal supports true color
- Check TERM variable: `echo $TERM` (should be `tmux-256color` or similar)
- Reload config: `Ctrl+a r`

### CPU/RAM not updating?
- Plugins may take a few seconds to initialize
- Check if plugins are installed: `ls ~/.tmux/plugins/`

## Keybinding Quick Reference

| Key | Action |
|-----|--------|
| `Ctrl+a` | Prefix key |
| `Ctrl+a r` | Reload config |
| `Ctrl+a I` | Install plugins |
| `Ctrl+a U` | Update plugins |
| `Ctrl+a t` | Show clock |

## Tips

1. **Session Persistence**: Sessions are auto-saved every 15 minutes and restored on tmux start
2. **Prefix Indicator**: The status bar shows "󰐃 PREFIX" in red when you press Ctrl+a
3. **Zoom Indicator**: "󰁌 ZOOM" appears in yellow when a pane is maximized
4. **Color-Coded Usage**: CPU and RAM change color based on usage (green → yellow → red)
5. **Powerline Style**: Smooth transitions between sections using  separator

Enjoy your beautiful tmux setup! 🎨
