# Fix Alt Keys in Windows Terminal for Tmux

## Problem
Windows Terminal doesn't send Alt key combinations to WSL/tmux by default.

## Solution 1: Use Ctrl+a Prefix (Already configured)
Inside tmux, use:
- `Ctrl+a` then `n` → New session
- `Ctrl+a` then `k` → Kill session
- `Ctrl+a` then `s` → Switch sessions
- `Ctrl+a` then `c` → New window
- `Ctrl+a` then `1-9` → Switch windows

## Solution 2: Fix Windows Terminal Settings

### Option A: Disable "Use Alt as menu key"
1. Open Windows Terminal
2. Press `Ctrl+,` to open Settings
3. Go to **Interaction** section
4. Turn OFF "**Automatically focus pane on mouse hover**"
5. Turn OFF "**Use Alt key as menu shortcut key**"
6. Save and restart Windows Terminal

### Option B: Use Windows Terminal Preview
Windows Terminal Preview handles Alt keys better:
1. Install from Microsoft Store: "Windows Terminal Preview"
2. It has better Alt key support by default

## Solution 3: Use Alternative Terminal

### WSLtty (Recommended for WSL)
1. Download from: https://github.com/mintty/wsltty/releases
2. Install and use instead of Windows Terminal
3. Alt keys work perfectly out of the box

### Alacritty for WSL
1. Install in Windows: https://github.com/alacritty/alacritty/releases
2. Configure to use WSL as shell
3. Excellent Alt key support

## Test Your Setup
After making changes, test in tmux:
1. Start tmux: `tmux`
2. Try `Alt+n` to create new session
3. If it doesn't work, use `Ctrl+a` then `n`

## Quick Reference with Ctrl+a
| Command | Action |
|---------|--------|
| `Ctrl+a` `n` | New session |
| `Ctrl+a` `k` | Kill session |
| `Ctrl+a` `s` | Switch sessions |
| `Ctrl+a` `d` | Detach |
| `Ctrl+a` `c` | New window |
| `Ctrl+a` `1-9` | Switch to window |
| `Ctrl+a` `"` | Split horizontal |
| `Ctrl+a` `%` | Split vertical |
| `Ctrl+a` `arrow` | Navigate panes |
| `Ctrl+a` `?` | Show all keybindings |