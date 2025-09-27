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
- **python3** (3.8+) - For Neovim plugins and Python development
- **pip3** - Python package manager
- **node/npm** (18+) - For TypeScript/JavaScript language servers
- **gcc/build-essential** - For compiling some tools

### Python Development Tools (Auto-installed)
- **pyright** - Fast Python language server with type checking
- **ruff** - Ultra-fast Python linter/formatter (10-100x faster)
- **black** - Python code formatter
- **isort** - Import statement organizer
- **mypy** - Static type checker
- **debugpy** - Python debugger

### Install All Dependencies
```bash
# Ubuntu/Debian
sudo apt update
sudo apt install -y tmux fish neovim fzf git curl wget ripgrep fd-find bat python3 python3-pip nodejs npm build-essential

# macOS (with Homebrew)
brew install tmux fish neovim fzf git ripgrep fd bat python node

# Install Python development tools (optional - NvChad will auto-install via Mason)
pip3 install --user pyright ruff mypy black isort debugpy
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
Ctrl+b d            # Detach (keeps everything running!)

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

### Tmux (Minimal Configuration)
- Default `Ctrl+b` prefix (standard tmux keybindings)
- Session management with Fish functions: `t`, `tn`, `tk`, `tl`, `ts`
- Clean status bar with session info
- Mouse support enabled
- True color support
- Minimal, stable configuration

### Nvchad - Modern IDE Features
- **LSP support** for Python, TypeScript, JavaScript, Rust, HTML/CSS
- **Syntax highlighting** with Treesitter
- **File explorer** with Neo-tree
- **Git integration** with vim-fugitive
- **Beautiful themes** with Catppuccin/GitHub Dark
- **Auto-installation** of language servers via Mason

#### 🐍 Python Development (Professional Setup)
**Language Server**: Pyright (Microsoft's fast Python LSP)
- **Type Checking**: Full type hint support with configurable strictness
- **IntelliSense**: Smart completions with type information
- **Auto-imports**: Automatically add missing imports
- **Go to Definition**: Jump to function/class definitions (`gd`)
- **Find References**: Find all usages (`gr`)
- **Hover Documentation**: View docs and type info (`K`)
- **Signature Help**: Function parameter hints while typing
- **Code Actions**: Quick fixes and refactoring (`Space ca`)
- **Virtual Environment Detection**: Auto-detects venv, conda environments

**Linting & Formatting**: Ruff (10-100x faster than traditional tools)
- **Real-time Error Detection**: Instant feedback on code issues
- **Format on Save**: Auto-format Python files when saving
- **Import Sorting**: Automatic import organization with isort
- **Code Style**: Enforces PEP 8 and best practices
- **Security Checks**: Identifies potential security issues
- **Performance Hints**: Suggests performance improvements

**Type Checking Levels**:
- `standard` (default): Balance between strictness and flexibility
- `strict`: Maximum type safety for production code
- `basic`: Minimal checking for quick prototyping
- `off`: Disable type checking

#### 💻 TypeScript/JavaScript Development
**Language Server**: typescript-language-server
- Full TypeScript/JavaScript support
- JSX/TSX support for React
- Auto-imports and code actions
- Type checking and IntelliSense
- Format with Prettier

## ⌨️ Essential Keybindings

### Tmux Default Commands (Prefix: `Ctrl+b`)

#### Session Management
| Command | Action | Usage |
|---------|--------|-------|
| `tn gemini` | Create named session | Start new project |
| `Ctrl+b d` | **Detach session** | Leave tmux running |
| `t` | Reattach to session | Come back to work |
| `Ctrl+b s` | List/switch sessions | Navigate projects |
| `Ctrl+b $` | Rename session | Organize work |
| `Ctrl+b (` / `)` | Previous/Next session | Quick switch |
| `Ctrl+b :kill-ses` | Kill session | Command mode |
| `tk` | Kill session (interactive) | With preview |

#### Window Management
| Command | Action | Usage |
|---------|--------|-------|
| `Ctrl+b c` | New window | New workspace |
| `Ctrl+b 0-9` | Jump to window | Direct access |
| `Ctrl+b n/p` | Next/Previous window | Navigate windows |
| `Ctrl+b ,` | Rename window | Label your work |
| `Ctrl+b w` | List windows | See all windows |
| `Ctrl+b &` | Kill window | Close window |

#### Pane Management
| Command | Action | Usage |
|---------|--------|-------|
| `Ctrl+b %` | Split horizontal | Side-by-side |
| `Ctrl+b "` | Split vertical | Top-bottom |
| `Ctrl+b arrows` | Navigate panes | Move around |
| `Ctrl+b o` | Next pane | Cycle through |
| `Ctrl+b z` | Zoom/unzoom pane | Focus mode |
| `Ctrl+b x` | Kill pane | Close split |
| `Ctrl+b {` / `}` | Swap panes | Rearrange |
| `Ctrl+b Space` | Cycle layouts | Change arrangement |

#### Quick Actions
| Command | Action | When to use |
|---------|--------|-------------|
| `Ctrl+b ?` | Show all shortcuts | When stuck |
| `Ctrl+b :source ~/.tmux.conf` | Reload config | Run command |
| Mouse click | Select pane/window | Quick navigation |
| `Ctrl+b [` | Copy mode | Scroll/copy |

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

#### General Navigation
| Keybinding | Action | Description |
|------------|--------|-------------|
| `Space ff` | Find files | Fuzzy file search |
| `Space fw` | Live grep | Search text in all files |
| `Space fb` | Browse buffers | Switch between open files |
| `Ctrl+n` | File tree toggle | Show/hide file explorer |
| `Tab` | Next buffer | Cycle through open files |
| `Shift+Tab` | Previous buffer | Cycle backwards |
| `;` | Command mode | Quick command entry |
| `Space ch` | Cheatsheet | Show all keybindings |

#### Code Navigation (Works for Python, TypeScript, etc.)
| Keybinding | Action | Description |
|------------|--------|-------------|
| `gd` | Go to definition | Jump to function/class definition |
| `gr` | Go to references | Find all usages |
| `gI` | Go to implementation | Jump to implementation |
| `gt` | Go to type definition | Jump to type definition |
| `K` | Hover documentation | Show docs/type info |
| `[d` | Previous diagnostic | Jump to previous error/warning |
| `]d` | Next diagnostic | Jump to next error/warning |
| `Space D` | Type definition | Show type in floating window |
| `Space ra` | Rename symbol | Rename across project |

#### Code Actions & Formatting
| Keybinding | Action | Description |
|------------|--------|-------------|
| `Space ca` | Code actions | Quick fixes, refactoring |
| `Space fm` | Format file | Format current file |
| `Space /` | Toggle comment | Comment/uncomment lines |
| `gcc` | Comment line | Toggle line comment |
| `gc` (visual) | Comment selection | Toggle selected lines |

#### Python-Specific Features
| Feature | Usage | Example |
|---------|-------|---------|
| Type hints | Hover over variables | `K` on any variable shows type |
| Auto-import | Start typing class name | Pyright suggests imports |
| Format on save | Just save the file | Ruff formats automatically |
| Virtual env | Open project with venv | Auto-detects and uses venv |
| Type checking | Real-time as you type | Errors shown inline |
| Docstrings | Type `"""` after function | Auto-complete docstring template |

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
Ctrl+b c            # New window for different task
Ctrl+b 0-9          # Jump between windows by number
Ctrl+b n/p          # Next/previous window
Ctrl+b ,            # Rename window to track what you're doing

# Pane management
Ctrl+b %            # Split horizontal for side-by-side
Ctrl+b "            # Split vertical for logs/terminal
Ctrl+b o            # Cycle between panes
Ctrl+b z            # Zoom current pane for focus

# Session management
Ctrl+b s            # See all sessions and switch
Ctrl+b (            # Quick switch to previous session
```

### Taking Breaks
```bash
Ctrl+b d            # Detach - everything keeps running!
# Close terminal, go for coffee, etc.
t                   # When back, reattach instantly
```

### End of Day
```bash
tl                  # List all running sessions
tk                  # Interactive kill sessions you don't need
Ctrl+b d            # Or just detach and leave everything running for tomorrow
```

### Python Development Workflow

#### Starting a Python Project
```bash
# Create tmux session for your project
tn myproject

# Open Python file in Neovim
nvim app.py
```

#### While Coding in Neovim
```python
# Type hints are fully supported
def calculate_total(items: list[float]) -> float:
    # Press K here to see function documentation
    return sum(items)

# Start typing a class name for auto-import
# Type: Diction... and Pyright suggests: from typing import Dict

class User:
    def __init__(self, name: str, age: int):
        self.name = name  # Hover with K shows type: str
        self.age = age    # Shows type: int

    def get_info(self) -> dict:
        # Press Space ca for code actions (add type hints, etc.)
        return {"name": self.name, "age": self.age}

# Errors show immediately
user = User("Alice", "30")  # Error: age expects int, got str

# Press [d to jump to the error
# Press Space ca to see quick fixes
```

#### Common Python LSP Commands
```vim
:Mason                    # Open Mason to manage language servers
:LspInfo                  # Check if Pyright is running
:LspRestart              # Restart language server if needed
```

#### Virtual Environment Support
```bash
# Pyright automatically detects virtual environments
cd myproject
python -m venv venv
source venv/bin/activate  # or 'venv\Scripts\activate' on Windows
nvim main.py              # Pyright uses the venv automatically
```

### Common Patterns
```bash
# Project switching
tn frontend         # Create frontend session
Ctrl+b d           # Detach
tn backend         # Create backend session
Ctrl+b s           # Switch between them anytime

# Quick edits
Ctrl+b c           # New window
vim file.txt       # Edit
Ctrl+b x           # Kill window when done
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

## 💡 Tips & Troubleshooting

### General Tips
1. **First Time**: Run `t` to start tmux after installation
2. **WSL Users**: Check Windows Terminal settings for Alt key support
3. **Updates**: Pull latest changes and re-run installers
4. **Backups**: Installers create backups before modifying configs

### Python Development Troubleshooting

#### Language Server Not Working
```bash
# Check if Pyright is installed
which pyright

# In Neovim, check LSP status
:LspInfo
:Mason  # Check if pyright is installed

# Manually install if needed
pip3 install --user pyright ruff
```

#### Type Hints Not Showing
```vim
# Check LSP is attached to buffer
:LspInfo

# Restart LSP
:LspRestart

# Check Python version (needs 3.8+)
:!python3 --version
```

#### Format on Save Not Working
```vim
# Check conform.nvim setup
:ConformInfo

# Manually format
:lua require("conform").format()

# Disable format on save if needed
:let g:disable_autoformat = 1
```

#### Virtual Environment Issues
```bash
# Ensure venv is activated before opening Neovim
source venv/bin/activate
nvim file.py

# Or specify Python path in Neovim
:LspStop
:LspStart pyright
```

#### Performance Issues
```vim
# Switch to basic type checking if slow
# Edit ~/.config/nvim/lua/configs/lspconfig.lua
# Change typeCheckingMode from "standard" to "basic"
```

## 🤝 Contributing

Feel free to submit issues and enhancement requests!

## 📄 License

MIT License - Feel free to use and modify as needed.

## 👨‍💻 Author

**Abdullah Abdulwahab**

---
*Optimized for productivity and developer happiness* 🎉