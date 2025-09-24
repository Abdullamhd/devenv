# TMUX COMMANDS FOR WSL/WINDOWS TERMINAL

## HOW TO USE COMMANDS
**IMPORTANT:** Press `Ctrl+a` first, then release, then press the next key!

## ESSENTIAL COMMANDS

### Session Management
| Command | What it does |
|---------|--------------|
| `Ctrl+a` `n` | **New session** |
| `Ctrl+a` `s` | **Switch sessions** (interactive list) |
| `Ctrl+a` `d` | **Detach** (exit tmux but keep it running) |
| `Ctrl+a` `X` | **Kill session** (capital X) |
| `Ctrl+a` `r` | **Rename session** |

### Window Management
| Command | What it does |
|---------|--------------|
| `Ctrl+a` `c` | **Create new window** |
| `Ctrl+a` `1-9` | **Switch to window 1-9** |
| `Ctrl+a` `w` | **List windows** (interactive) |
| `Ctrl+a` `x` | **Kill window** |
| `Ctrl+a` `,` | **Rename window** |
| `Ctrl+a` `Tab` | **Toggle last window** |

### Pane Management
| Command | What it does |
|---------|--------------|
| `Ctrl+a` `\|` | **Split vertical** |
| `Ctrl+a` `-` | **Split horizontal** |
| `Ctrl+a` `h/j/k/l` | **Navigate panes** (vim-style) |
| `Ctrl+a` `arrows` | **Navigate panes** |
| `Ctrl+a` `q` | **Kill pane** |
| `Ctrl+a` `z` | **Zoom/unzoom pane** |

### Other Useful Commands
| Command | What it does |
|---------|--------------|
| `Ctrl+a` `?` | **Show all keybindings** |
| `Ctrl+a` `R` | **Reload config** |
| `Ctrl+a` `v` | **Copy mode** |

## FISH SHELL SHORTCUTS (Type in terminal)
| Command | What it does |
|---------|--------------|
| `t` | Start tmux or attach |
| `tn myproject` | New session named "myproject" |
| `tk` | Kill session (interactive) |
| `tl` | List all sessions |
| `ts` | Switch sessions |
| `tm` | Session manager |

## VISUAL INDICATOR
When you press `Ctrl+a`, you'll see **"PREFIX"** appear in red on the status bar!
This confirms tmux is waiting for your next command.

## TROUBLESHOOTING

**Nothing happens when I press keys:**
- Make sure you're inside tmux (check for green bar at bottom)
- Press `Ctrl+a` first, release, then press the command key

**How to test if it's working:**
1. Inside tmux, press `Ctrl+a`
2. You should see "PREFIX" appear in the status bar
3. Now press `c` to create a new window

**To exit tmux completely:**
- `Ctrl+a` `d` to detach (tmux keeps running)
- Or type `exit` to close current pane/window