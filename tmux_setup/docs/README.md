# TMUX Configuration for Fish Shell & Nvchad (WSL Optimized)

A powerful, minimal, and intuitive tmux configuration optimized for Fish shell, Nvchad users, and WSL/Windows Terminal.

## 🚀 Features

### WSL/Windows Terminal Compatible
Uses `Ctrl+a` prefix for reliable operation in Windows Terminal with visual PREFIX indicator.

### Minimal & Memorable Commands
- **Session Management**: `t`, `tn`, `tk`, `tl`, `ts`, `tinfo`, `tka`, `tr`
- **Interactive Manager**: `tm` with fzf fuzzy finder
- **Visual Feedback**: Shows "PREFIX" in red when `Ctrl+a` is pressed

### Fish Shell Integration
Complete set of fish functions for seamless tmux management.

### Nvchad Compatible
Vim-style navigation (`Ctrl+a` + `h/j/k/l`) that works perfectly with Nvchad.

## 📦 Dependencies

- **tmux** (version 3.0+)
- **fish** shell
- **fzf** (for fuzzy searching)
- **Optional**: ripgrep (for better search performance)

## Installation

```bash
cd ~/devenv/tmux_setup
./install.sh
```

Or manually:
```bash
# Install dependencies
sudo apt update
sudo apt install -y tmux fzf

# Copy configuration
cp tmux.conf ~/.tmux.conf
cp scripts/tm ~/bin/tm
chmod +x ~/bin/tm

# Install fish functions
cp functions/*.fish ~/.config/fish/functions/
```

## ⌨️ Complete Keybindings (Prefix: `Ctrl+a`)

**How to use:** Press `Ctrl+a` first (you'll see "PREFIX" in status bar), release, then press the command key.

### Session Management
| Key | Action | Description |
|-----|--------|-------------|
| `Ctrl+a` `n` | New session | Create new session in current directory |
| `Ctrl+a` `X` | Kill session | Kill current session (with confirmation) |
| `Ctrl+a` `s` | Session list | Interactive session switcher |
| `Ctrl+a` `S` | Session fzf | Fuzzy search sessions |
| `Ctrl+a` `d` | Detach | Leave tmux, keep running |
| `Ctrl+a` `r` | Rename | Rename current session |
| `Ctrl+a` `(` | Previous | Switch to previous session |
| `Ctrl+a` `)` | Next | Switch to next session |

### Window Management
| Key | Action | Description |
|-----|--------|-------------|
| `Ctrl+a` `c` | Create | New window |
| `Ctrl+a` `x` | Kill | Kill current window |
| `Ctrl+a` `w` | Windows | Interactive window list |
| `Ctrl+a` `W` | Window fzf | Fuzzy search windows |
| `Ctrl+a` `,` | Rename | Rename current window |
| `Ctrl+a` `1-9` | Jump | Direct window switch |
| `Ctrl+a` `Tab` | Toggle | Switch between last two windows |

### Pane Management
| Key | Action | Description |
|-----|--------|-------------|
| `Ctrl+a` `\|` | Split V | Split pane vertically |
| `Ctrl+a` `-` | Split H | Split pane horizontally |
| `Ctrl+a` `"` | Split H | Alternative horizontal split |
| `Ctrl+a` `%` | Split V | Alternative vertical split |
| `Ctrl+a` `q` | Kill | Kill current pane |
| `Ctrl+a` `z` | Zoom | Toggle pane zoom |
| `Ctrl+a` `;` | **Toggle** | **Switch between last two panes** |
| `Ctrl+a` `!` | Break | Convert pane to window |
| `Ctrl+a` `Space` | Layout | Cycle through layouts |

### Pane Navigation
| Key | Action | Description |
|-----|--------|-------------|
| `Ctrl+a` `h` | Left | Move to left pane |
| `Ctrl+a` `j` | Down | Move to down pane |
| `Ctrl+a` `k` | Up | Move to up pane |
| `Ctrl+a` `l` | Right | Move to right pane |
| `Ctrl+a` `←↓↑→` | Arrow Nav | Navigate with arrow keys |
| **Mouse Click** | Direct | Click pane to focus |

### Pane Resizing
| Key | Action | Description |
|-----|--------|-------------|
| `Ctrl+a` `H` | Resize ← | Decrease width (hold Shift) |
| `Ctrl+a` `J` | Resize ↓ | Increase height |
| `Ctrl+a` `K` | Resize ↑ | Decrease height |
| `Ctrl+a` `L` | Resize → | Increase width |
| **Mouse Drag** | Resize | Drag pane borders |

### Copy Mode
| Key | Action | Description |
|-----|--------|-------------|
| `Ctrl+a` `v` | Enter | Enter copy mode |
| `v` | Select | Start selection (in copy mode) |
| `y` | Copy | Copy selection |
| `q` | Exit | Exit copy mode |

### Other Commands
| Key | Action | Description |
|-----|--------|-------------|
| `Ctrl+a` `R` | Reload | Reload tmux configuration |
| `Ctrl+a` `?` | Help | Show all keybindings |
| `Ctrl+a` `/` | Search | Search keybindings |
| `Ctrl+a` `Ctrl+a` | Send | Send Ctrl+a to application |

## 🐟 Fish Shell Functions

| Command | Description | Usage Example |
|---------|-------------|---------------|
| `t` | Smart attach/create session | `t` |
| `tn` | Create new named session | `tn project` |
| `tk` | Kill session with preview | `tk` or `tk session-name` |
| `tl` | List all sessions | `tl` |
| `ts` | Switch sessions with fzf | `ts` |
| `tinfo` | **Detailed session overview** | `tinfo` |
| `tka` | **Kill ALL sessions** | `tka` |
| `tr` | **Rename current session** | `tr newname` |
| `tm` | Interactive session manager | `tm` |

## 📁 Directory Structure

```
tmux_setup/
├── docs/               # Documentation
│   ├── README.md      # This file
│   ├── QUICK_COMMANDS.md
│   ├── SESSION_MASTERY_GUIDE.md
│   └── windows_terminal_fix.md
├── functions/          # Enhanced fish functions
│   ├── tk.fish        # Kill with preview
│   ├── tinfo.fish     # Session info
│   ├── tka.fish       # Kill all
│   └── tr.fish        # Rename session
├── scripts/
│   └── tm             # Session manager script
├── tmux.conf          # Main configuration
└── install.sh         # Installer script
```

## 🎨 Status Bar

The status bar shows:
- **Left**: Session name with prefix indicator (shows "PREFIX" when `Ctrl+a` is pressed)
- **Center**: Window list with active window highlighted
- **Right**: Time and date

## 💡 Pro Tips

1. **Quick Session Toggle**: Use `Ctrl+a (` and `Ctrl+a )` to cycle through sessions
2. **Pane Toggle**: Use `Ctrl+a ;` to quickly switch between two panes
3. **Window Toggle**: Use `Ctrl+a Tab` to switch between last two windows
4. **Mouse Mode**: Click to select panes, drag borders to resize
5. **Zoom Focus**: Use `Ctrl+a z` to focus on one pane temporarily
6. **Session Info**: Run `tinfo` to see detailed session/window/pane overview

## 🔧 Customization

Edit `~/.tmux.conf` to customize. Key sections:
- **General Settings**: Lines 10-30 (colors, shell, history)
- **Key Bindings**: Lines 45-120 (all shortcuts)
- **Status Bar**: Lines 140-165 (appearance)
- **Quick Access**: Lines 125-135 (Alt key shortcuts if supported)

## 🚨 Troubleshooting

### WSL/Windows Terminal Issues
- **Alt keys not working**: Disable "Use Alt as menu key" in Windows Terminal settings
- **Prefix not working**: Ensure you see "PREFIX" in red after pressing `Ctrl+a`

### Common Issues
- **Commands not found**: Run `source ~/.config/fish/config.fish`
- **FZF not working**: Install with `sudo apt install fzf`
- **Mouse not working**: Check if `set -g mouse on` is in config
- **Sessions nested warning**: You're in tmux, use `Ctrl+a s` to switch

## 📚 Additional Resources

- [Session Mastery Guide](SESSION_MASTERY_GUIDE.md) - Deep dive into sessions
- [Quick Commands](QUICK_COMMANDS.md) - Quick reference card
- [Windows Terminal Fix](windows_terminal_fix.md) - WSL-specific fixes

## Uninstall

```bash
# Remove configuration
rm ~/.tmux.conf
rm ~/bin/tm

# Remove fish functions
rm ~/.config/fish/functions/{t,tn,tk,tl,ts,tinfo,tka,tr}.fish

# Kill all tmux sessions
tmux kill-server
```