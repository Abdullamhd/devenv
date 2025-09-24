# TMUX Fancy Setup for Fish Shell & Nvchad (WSL Optimized)

A powerful, minimal, and intuitive tmux configuration optimized for Fish shell, Nvchad users, and WSL/Windows Terminal.

## Features

### 🚀 WSL/Windows Terminal Compatible
Uses `Ctrl+a` prefix for reliable operation in Windows Terminal.

### 🎯 Minimal & Memorable Commands
- **Session Management**: `t`, `tn`, `tk`, `tl`, `ts`
- **Interactive Manager**: `tm` with fzf fuzzy finder
- **Visual Prefix Indicator**: Shows "PREFIX" when Ctrl+a is pressed

### 🐟 Fish Shell Integration
Custom fish functions for seamless tmux management.

### ✨ Nvchad Compatible
Vim-style navigation (`Ctrl+a` + `h/j/k/l`) that works perfectly with Nvchad.

## Installation

```bash
cd ~/devenv/tmux_setup
./install.sh
```

## Key Bindings (Ctrl+a prefix)

**How to use:** Press `Ctrl+a` first (you'll see "PREFIX" in status bar), then press the command key.

### Session Management
| Key | Action |
|-----|--------|
| `Ctrl+a` `n` | New session |
| `Ctrl+a` `X` | Kill current session |
| `Ctrl+a` `s` | Switch sessions (list) |
| `Ctrl+a` `S` | Switch sessions (fzf) |
| `Ctrl+a` `d` | Detach from session |
| `Ctrl+a` `r` | Rename session |

### Window Management
| Key | Action |
|-----|--------|
| `Ctrl+a` `c` | New window |
| `Ctrl+a` `x` | Kill window |
| `Ctrl+a` `w` | Switch windows (list) |
| `Ctrl+a` `,` | Rename window |
| `Ctrl+a` `1-9` | Direct window switch |
| `Ctrl+a` `Tab` | Toggle last window |

### Pane Management
| Key | Action |
|-----|--------|
| `Ctrl+a` `\|` | Split vertical |
| `Ctrl+a` `-` | Split horizontal |
| `Ctrl+a` `q` | Kill pane |
| `Ctrl+a` `h/j/k/l` | Navigate panes |
| `Ctrl+a` `H/J/K/L` | Resize panes |
| `Ctrl+a` `z` | Zoom/unzoom pane |

## Fish Commands

| Command | Description |
|---------|-------------|
| `t` | Attach to tmux or create new session |
| `tn [name]` | Create new named session |
| `tk` | Kill session interactively |
| `tl` | List all sessions |
| `ts` | Switch sessions with fzf |
| `tka` | Kill ALL sessions |
| `tr [name]` | Rename current session |
| `tm` | Interactive session manager |

## Files Structure

```
tmux_setup/
├── install.sh          # Installer script
├── tmux.conf          # Tmux configuration
├── fish/
│   └── tmux.fish      # Fish shell functions
├── scripts/
│   └── tm             # Session manager script
└── README.md          # This file
```

## Tips

1. **Quick Start**: Just type `t` in terminal to start using tmux
2. **Prefix Key**: Press `Ctrl+a` first, then the command key (you'll see "PREFIX" indicator)
3. **Session Manager**: Use `tm` for interactive session management with preview
4. **Mouse Support**: Click to select panes, drag to resize, scroll to navigate
5. **WSL Users**: If Alt keys don't work, disable "Use Alt as menu key" in Windows Terminal settings

## Troubleshooting

- **Commands not found**: Open a new terminal or run `source ~/.config/fish/config.fish`
- **Keybindings not working**: Make sure you're using a terminal that supports Alt key combinations
- **FZF not working**: Install with `sudo apt install fzf`

## Customization

Edit `~/.tmux.conf` to customize settings. The configuration is well-commented for easy modification.

## Uninstall

To remove the setup:
```bash
rm ~/.tmux.conf
rm ~/bin/tm
rm ~/.config/fish/functions/{t,tn,tk,tl,ts,tka,tr}.fish
```