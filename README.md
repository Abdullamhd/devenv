# 🚀 DevEnv - Development Environment Configuration

Complete development environment setup for WSL/Linux with Fish shell, Tmux, and Nvchad.

## ✨ Features

- **🐟 Fish Shell** - Modern shell with autosuggestions and syntax highlighting
- **🖥️ Tmux** - Terminal multiplexer with session management
- **📝 Nvchad** - Neovim configuration with IDE features
- **🔧 WSL Optimized** - Special configurations for Windows Subsystem for Linux
- **📦 One-Command Setup** - Install everything with a single script

## 📋 Dependencies

### Required
- **tmux** (3.0+) - Terminal multiplexer
- **fish** (3.0+) - Modern shell
- **neovim** (0.9.0+) - Text editor
- **fzf** - Fuzzy finder for interactive selection
- **git** - Version control
- **curl/wget** - For downloading packages

### Optional but Recommended
- **ripgrep** - Better grep alternative (for searching)
- **fd-find** - Better find alternative
- **bat** - Better cat with syntax highlighting
- **python3** - For Neovim plugins and LSP
- **node/npm** - For many Neovim language servers
- **gcc/build-essential** - For compiling some tools

### Install All Dependencies
```bash
# Ubuntu/Debian
sudo apt update
sudo apt install -y tmux fish neovim fzf git curl wget ripgrep fd-find bat python3 nodejs npm build-essential

# macOS (with Homebrew)
brew install tmux fish neovim fzf git ripgrep fd bat python node
```

## 🚀 Quick Start

```bash
# Clone the repository
git clone https://github.com/Abdullamhd/devenv.git
cd devenv

# Run the master installer
./SETUP_ALL.sh

# Or install individual components
./fish_setup/install.sh    # Fish shell only
./tmux_setup/install.sh    # Tmux only
./nvchad_setup/install.sh  # Nvchad only
```

### Start Working with Tmux
```bash
# Start working
t                   # Start tmux (attach or create)
tn myproject        # Or create named session

# Take a break
Ctrl+a d            # Detach (keeps everything running!)

# Come back later
t                   # Reattach and continue where you left off
```

## 📁 Repository Structure

```
devenv/
├── fish_setup/         # Fish shell configuration
├── tmux_setup/         # Tmux configuration
├── nvchad_setup/       # Neovim/Nvchad configuration
├── common/             # Shared configurations
├── docs/               # Documentation
└── SETUP_ALL.sh        # Master installer
```

## 🎯 Key Features by Tool

### Fish Shell
- Smart command autocompletion
- Syntax highlighting
- Custom functions for tmux integration
- Git abbreviations and helpers
- Python/Conda environment support

### Tmux
- `Ctrl+a` prefix (WSL optimized)
- Session management with `t`, `tn`, `tk`, `tl`, `ts`
- Visual prefix indicator
- Mouse support
- Vim-style navigation
- FZF integration for fuzzy searching

### Nvchad
- LSP support for multiple languages
- Syntax highlighting with Treesitter
- File explorer with Neo-tree
- Git integration
- Custom keybindings
- Beautiful Catppuccin theme

## ⌨️ Essential Keybindings

### Tmux Daily Commands (Prefix: `Ctrl+a`)

#### Session Management
| Command | Action | Usage |
|---------|--------|-------|
| `tn gemini` | Create named session | Start new project |
| `Ctrl+a d` | **Detach session** | Leave tmux running |
| `t` | Reattach to session | Come back to work |
| `Ctrl+a s` | List/switch sessions | Navigate projects |
| `Ctrl+a r` | Rename session | Organize work |
| `Ctrl+a (` / `)` | Previous/Next session | Quick switch |
| `Ctrl+a X` | Kill session | Clean up (capital X) |
| `tk` | Kill session (interactive) | With preview |

#### Window Management
| Command | Action | Usage |
|---------|--------|-------|
| `Ctrl+a c` | New window | New workspace |
| `Ctrl+a 1-9` | Jump to window | Direct access |
| `Ctrl+a Tab` | Toggle last window | Quick back-and-forth |
| `Ctrl+a ,` | Rename window | Label your work |
| `Ctrl+a w` | List windows | See all windows |
| `Ctrl+a x` | Kill window | Close window |

#### Pane Management
| Command | Action | Usage |
|---------|--------|-------|
| `Ctrl+a \|` | Split vertical | Side-by-side |
| `Ctrl+a -` | Split horizontal | Top-bottom |
| `Ctrl+a h/j/k/l` | Navigate panes | Move around |
| `Ctrl+a ;` | Toggle last pane | Quick switch |
| `Ctrl+a z` | Zoom/unzoom pane | Focus mode |
| `Ctrl+a q` | Kill pane | Close split |
| `Ctrl+a {` / `}` | Swap panes | Rearrange |
| `Ctrl+a Space` | Cycle layouts | Change arrangement |

#### Quick Actions
| Command | Action | When to use |
|---------|--------|-------------|
| `Ctrl+a ?` | Show all shortcuts | When stuck |
| `Ctrl+a R` | Reload config | After changes |
| Mouse click | Select pane/window | Quick navigation |
| `Ctrl+a n` | New session | While in tmux |

### Fish Functions
| Command | Description |
|---------|-------------|
| `t` | Attach/create tmux session |
| `tn NAME` | New named session |
| `tk` | Kill session (interactive) |
| `tl` | List sessions |
| `ts` | Switch sessions with fzf |
| `tinfo` | Session details |
| `tm` | Session manager |
| `gitlog` | Pretty git history |
| `ports` | Show listening ports |

### Nvchad (Leader: Space)
| Keybinding | Action |
|------------|--------|
| `Space ff` | Find files |
| `Space fw` | Live grep |
| `Space fb` | Browse buffers |
| `Ctrl+n` | File tree toggle |
| `gd` | Go to definition |
| `K` | Hover docs |
| `Space ca` | Code actions |
| `Space ch` | Cheatsheet |
| `;` | Command mode |

## 🎯 Most Used Daily Workflow

### Morning Start
```bash
t                    # Attach to existing or create new
tn work              # Or create specific work session
tn personal          # Separate session for personal projects
```

### During Work
```bash
# Window management
Ctrl+a c            # New window for different task
Ctrl+a 1-9          # Jump between windows quickly
Ctrl+a Tab          # Toggle between last two windows
Ctrl+a ,            # Rename window to track what you're doing

# Pane management
Ctrl+a |            # Split vertical for side-by-side coding
Ctrl+a -            # Split horizontal for logs/terminal
Ctrl+a ;            # Quick toggle between panes
Ctrl+a z            # Zoom current pane for focus

# Session management
Ctrl+a s            # See all sessions and switch
Ctrl+a (            # Quick switch to previous session
```

### Taking Breaks
```bash
Ctrl+a d            # Detach - everything keeps running!
# Close terminal, go for coffee, etc.
t                   # When back, reattach instantly
```

### End of Day
```bash
tl                  # List all running sessions
tk                  # Interactive kill sessions you don't need
Ctrl+a d            # Or just detach and leave everything running for tomorrow
```

### Common Patterns
```bash
# Project switching
tn frontend         # Create frontend session
Ctrl+a d           # Detach
tn backend         # Create backend session
Ctrl+a s           # Switch between them anytime

# Quick edits
Ctrl+a c           # New window
vim file.txt       # Edit
Ctrl+a x           # Kill window when done
```

## 🔧 Configuration Files

- **Fish**: `~/.config/fish/config.fish`
- **Tmux**: `~/.tmux.conf`
- **Nvim**: `~/.config/nvim/`

## 📚 Documentation

### Quick References
- [Essential Shortcuts Cheatsheet](docs/ESSENTIAL_SHORTCUTS.md)
- [Tmux Complete Guide](tmux_setup/docs/README.md)
- [Fish Functions Reference](fish_setup/README.md)
- [Nvchad Keybindings](nvchad_setup/KEYBINDINGS.md)

### Guides
- [Session Management Guide](tmux_setup/docs/SESSION_MASTERY_GUIDE.md)
- [Troubleshooting](docs/TROUBLESHOOTING.md)
- [Windows Terminal Setup](tmux_setup/docs/windows_terminal_fix.md)

## 🛠️ Requirements

- Ubuntu/Debian-based Linux (WSL supported)
- Git
- Curl/Wget
- Internet connection for package installation

## 💡 Tips

1. **First Time**: Run `t` to start tmux after installation
2. **WSL Users**: Check Windows Terminal settings for Alt key support
3. **Updates**: Pull latest changes and re-run installers
4. **Backups**: Installers create backups before modifying configs

## 🤝 Contributing

Feel free to submit issues and enhancement requests!

## 📄 License

MIT License - Feel free to use and modify as needed.

## 👨‍💻 Author

**Abdullah Abdulwahab**

---
*Optimized for productivity and developer happiness* 🎉