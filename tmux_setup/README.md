# TMUX Fancy Setup for Fish Shell & Nvchad

A powerful, minimal, and intuitive tmux configuration optimized for Fish shell and Nvchad users.

## Features

### 🚀 No Prefix Required!
All commands use `Alt` key - no need to remember prefix combinations.

### 🎯 Minimal & Memorable Commands
- **Session Management**: `t`, `tn`, `tk`, `tl`, `ts`
- **Interactive Manager**: `tm` with fzf fuzzy finder
- **Direct Navigation**: `Alt+1-9` for instant window switching

### 🐟 Fish Shell Integration
Custom fish functions for seamless tmux management.

### ✨ Nvchad Compatible
Vim-style navigation (`Alt+h/j/k/l`) that works perfectly with Nvchad.

## Installation

```bash
cd ~/devenv/tmux_setup
./install.sh
```

## Key Bindings

### Session Management (Alt + key)
| Key | Action |
|-----|--------|
| `Alt+n` | New session |
| `Alt+k` | Kill current session |
| `Alt+s` | Switch sessions (fzf) |
| `Alt+d` | Detach from session |
| `Alt+r` | Rename session |

### Window Management
| Key | Action |
|-----|--------|
| `Alt+c` | New window |
| `Alt+q` | Kill window |
| `Alt+w` | Switch windows (fzf) |
| `Alt+,` | Rename window |
| `Alt+1-9` | Direct window switch |
| `Alt+←/→` | Previous/Next window |

### Pane Management
| Key | Action |
|-----|--------|
| `Alt+Enter` | Split horizontal |
| `Alt+\` | Split vertical |
| `Alt+x` | Kill pane |
| `Alt+h/j/k/l` | Navigate panes |
| `Alt+H/J/K/L` | Resize panes |
| `Alt+z` | Zoom/unzoom pane |

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
2. **No Prefix**: All keybindings use Alt key - no prefix required!
3. **Session Manager**: Use `tm` for interactive session management with preview
4. **Mouse Support**: Click to select panes, drag to resize, scroll to navigate

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