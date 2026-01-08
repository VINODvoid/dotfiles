# Install Tmux Plugins - Quick Guide

## Step-by-Step Installation

### 1. Check TPM is Installed
```bash
ls ~/.tmux/plugins/tpm
```
✅ If you see files, TPM is installed. Skip to step 3.
❌ If not found, continue to step 2.

### 2. Install TPM (if needed)
```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

### 3. Start a Tmux Session
```bash
# Start a new session
tmux

# OR attach to existing session
tmux attach
```

### 4. Install Plugins

**Inside tmux, press these keys in sequence:**

1. `Ctrl+a` (prefix key)
2. `Shift+I` (capital I - hold Shift and press i)

You'll see a message:
```
TMUX environment reloaded.
Done, press ESCAPE to continue.
```

**Wait 30-60 seconds** for plugins to download and install.

### 5. Reload Configuration

Press: `Ctrl+a` then `r`

You should now see:
- 󰻠 CPU percentage
- 󰍛 RAM percentage
- 󰂄 Battery icon and percentage

### 6. Verify Plugins Installed

```bash
ls ~/.tmux/plugins/
```

You should see:
- tpm
- tmux-sensible
- tmux-cpu
- tmux-battery
- tmux-resurrect
- tmux-continuum
- tmux-yank
- vim-tmux-navigator

## Troubleshooting

### Battery Icon Still Not Showing?

1. **Check battery plugin installed:**
   ```bash
   ls ~/.tmux/plugins/tmux-battery/
   ```

2. **Test battery detection:**
   ```bash
   cat /sys/class/power_supply/BAT0/capacity 2>/dev/null
   # Should show percentage like: 85
   ```

3. **Manual plugin reload:**
   Inside tmux, press: `Ctrl+a` then `:` then type:
   ```
   run-shell ~/.tmux/plugins/tmux-battery/battery.tmux
   ```
   Press Enter.

4. **Kill and restart tmux:**
   ```bash
   tmux kill-server
   tmux
   ```

### CPU/RAM Not Showing?

Same steps as above, but for tmux-cpu:
```bash
ls ~/.tmux/plugins/tmux-cpu/
```

Manual reload:
```
Ctrl+a : run-shell ~/.tmux/plugins/tmux-cpu/cpu.tmux
```

### Plugin Installation Failed?

**Try manual installation:**
```bash
cd ~/.tmux/plugins/
git clone https://github.com/tmux-plugins/tmux-cpu
git clone https://github.com/tmux-plugins/tmux-battery
git clone https://github.com/tmux-plugins/tmux-resurrect
git clone https://github.com/tmux-plugins/tmux-continuum
git clone https://github.com/tmux-plugins/tmux-yank
git clone https://github.com/christoomey/vim-tmux-navigator
```

Then reload: `Ctrl+a r`

### Icons Look Wrong?

Make sure your terminal is using a **Nerd Font**:
```bash
# Install JetBrains Mono Nerd Font
sudo pacman -S ttf-jetbrains-mono-nerd

# Then configure your terminal (WezTerm/Kitty) to use it
```

## Quick Commands Reference

| Action | Keys |
|--------|------|
| Install plugins | `Ctrl+a` `Shift+I` |
| Update plugins | `Ctrl+a` `Shift+U` |
| Reload config | `Ctrl+a` `r` |
| List plugins | `Ctrl+a` `:` then `show-messages` |

## Expected Result

After successful installation, your status bar should show:

```
󰍹 session  󰣇 hostname    1 nvim    󰀘 󰻠 45% 󰍛 62% 󰂄 85% 󰃰 Mon Jan 07  15:30
```

With all icons visible and metrics updating every 5 seconds!

## Still Having Issues?

Check the tmux message log:
```bash
# Inside tmux
Ctrl+a :
# Type: show-messages
# Press Enter
```

Look for any error messages about plugins.
