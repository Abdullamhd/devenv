# 🚀 Essential Shortcuts Cheatsheet

Quick reference for the most commonly used commands across Tmux, Fish, and Nvim.

## 🎯 Daily Workflow Commands

### Starting Your Day
```bash
t              # Start tmux (attach or create)
tn project     # Create session named "project"
nvim           # Open Neovim
```

## 🖥️ Tmux Essentials (Prefix: `Ctrl+a`)

### Must-Know Commands
| Keys | Action | Remember As |
|------|--------|-------------|
| `t` | Start tmux | **t**mux |
| `Ctrl+a c` | New window | **c**reate |
| `Ctrl+a n` | New session | **n**ew |
| `Ctrl+a s` | Switch sessions | **s**witch |
| `Ctrl+a d` | Detach | **d**etach |
| `Ctrl+a 1-9` | Jump to window | Direct number |
| `Ctrl+a ;` | Toggle panes | Last pane |
| `Ctrl+a \|` | Split vertical | Vertical bar |
| `Ctrl+a -` | Split horizontal | Horizontal line |
| `Ctrl+a h/j/k/l` | Navigate panes | Vim style |
| `Ctrl+a z` | Zoom pane | **z**oom |
| `Ctrl+a ?` | Show all keys | Help |

### Quick Tips
- **See "PREFIX"**: Red indicator shows when `Ctrl+a` is pressed
- **Mouse works**: Click panes, drag borders, scroll history
- **Quick toggle**: `Ctrl+a ;` switches between two panes instantly

## 🐟 Fish Shell Commands

### Tmux Management
| Command | What It Does | Example |
|---------|--------------|---------|
| `t` | Smart attach/create | `t` |
| `tn` | New named session | `tn backend` |
| `tk` | Kill with preview | `tk` |
| `tl` | List all sessions | `tl` |
| `ts` | Switch with fuzzy search | `ts` |
| `tinfo` | Detailed overview | `tinfo` |

### Development Helpers
| Command | What It Does | Example |
|---------|--------------|---------|
| `gitlog` | Pretty git graph | `gitlog` |
| `ports` | Show listening ports | `ports 3000` |
| `extract` | Extract any archive | `extract file.zip` |
| `backup` | Timestamped backup | `backup config.json` |

### Git Shortcuts (Abbreviations)
| Type | Expands To | Action |
|------|------------|--------|
| `gs` | `git status` | Check status |
| `ga` | `git add` | Stage files |
| `gc` | `git commit` | Commit |
| `gp` | `git push` | Push changes |
| `gl` | `git log --oneline` | View history |

## 📝 Neovim/Nvchad (Leader: `Space`)

### File Operations
| Keys | Action | Remember As |
|------|--------|-------------|
| `Space ff` | Find files | **f**ind **f**iles |
| `Space fw` | Search text | **f**ind **w**ords |
| `Space fb` | Browse buffers | **f**ind **b**uffers |
| `Ctrl+n` | File tree | **n**avTree |
| `Tab` | Next buffer | Tab through |
| `Shift+Tab` | Previous buffer | Back tab |
| `Ctrl+s` | Save file | **s**ave |

### Code Navigation
| Keys | Action | Remember As |
|------|--------|-------------|
| `gd` | Go to definition | **g**o **d**efinition |
| `gr` | Go to references | **g**o **r**eferences |
| `K` | Show docs | Hover |
| `Space ca` | Code actions | **c**ode **a**ctions |
| `[d` | Previous error | Back diagnostic |
| `]d` | Next error | Forward diagnostic |

### Editing
| Keys | Action | Remember As |
|------|--------|-------------|
| `Space /` | Toggle comment | Slash comment |
| `gcc` | Comment line | **g**o **c**omment **c**omment |
| `;` | Command mode | Quick command |
| `jk` | Exit insert mode | Quick escape |

## 🎮 Power User Combos

### Quick Project Switch
```bash
1. Ctrl+a s     # Show all sessions
2. Type name    # Filter sessions
3. Enter        # Switch to it
```

### Find and Edit
```bash
1. Space fw     # Search text in all files
2. Type search  # Find what you want
3. Enter        # Open file at match
```

### Multi-Pane Coding
```bash
1. Ctrl+a |     # Split vertical
2. Ctrl+a ;     # Toggle between panes
3. Ctrl+a z     # Zoom current pane
```

## 🔥 Most Used Daily

### Morning Routine
```bash
t              # Start tmux
tn work        # Create work session
Space ff       # Find files to edit
```

### During Coding
```bash
Space fw       # Search across project
gd             # Jump to definition
K              # View documentation
Space /        # Comment code
Ctrl+s         # Save file
```

### Session Management
```bash
Ctrl+a s       # See all sessions
Ctrl+a d       # Detach (lunch break)
t              # Reattach when back
```

## 💡 Pro Tips

1. **Minimize Keystrokes**: Use `t` instead of `tmux attach`
2. **Visual Feedback**: Watch for "PREFIX" indicator in tmux
3. **Fuzzy Everything**: Most commands support fuzzy search
4. **Mouse When Lazy**: Click to focus, drag to resize
5. **Learn Gradually**: Master 5 shortcuts, then add 5 more

## 🎯 Cheat Codes

### Emergency Exits
- `Ctrl+a d` - Detach from tmux
- `jk` - Exit insert mode in vim
- `Ctrl+c` - Cancel any command
- `q` - Quit most preview windows

### Quick Fixes
- `Ctrl+a R` - Reload tmux config
- `source ~/.config/fish/config.fish` - Reload fish
- `:Lazy sync` - Update nvim plugins
- `tka` - Kill all tmux sessions (nuclear option)

## 📖 Learning Path

### Week 1: Basics
- Master: `t`, `tn`, `Ctrl+a c`, `Ctrl+a 1-9`
- Learn: `Space ff`, `Space fw`, `Ctrl+n`

### Week 2: Navigation
- Master: `Ctrl+a h/j/k/l`, `gd`, `gr`
- Learn: `Ctrl+a ;`, `Space fb`, `Tab`

### Week 3: Advanced
- Master: `tk`, `ts`, `Space ca`, `gcc`
- Learn: `gitlog`, `ports`, custom functions

## 🆘 Help Commands

- `Ctrl+a ?` - Show all tmux keys
- `Space ch` - Nvchad cheatsheet
- `Space wk` - Which key (show keybindings)
- `tinfo` - Show session details
- `man tmux` - Tmux manual
- `:help` - Neovim help

---
*Remember: Efficiency comes from muscle memory. Pick 5 commands and use them until automatic, then add more!*