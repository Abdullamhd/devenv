# Fish Shell Configuration

Complete Fish shell configuration with development tools, tmux integration, and utility functions.

## 🚀 Features

- **Fish Shell 3.3.1**: Modern, user-friendly command line shell
- **Full Development Environment**: Python, Node.js, Mojo tools integrated
- **Tmux Integration**: Complete set of tmux management functions
- **Utility Functions**: Development and system helper functions
- **Auto-completions**: Enhanced command line experience with intelligent suggestions
- **WSL Optimized**: Special configurations for Windows Subsystem for Linux

## 📦 Dependencies

### Required
- **fish** (3.0+) - The shell itself
- **tmux** - For terminal multiplexing
- **fzf** - Fuzzy finder for interactive selection

### Optional but Recommended
- **ripgrep** (`rg`) - Better grep alternative
- **fd** - Better find alternative
- **bat** - Better cat with syntax highlighting

Install dependencies:
```bash
sudo apt update
sudo apt install -y fish tmux fzf ripgrep fd-find bat
```

## Installation

### Quick Install
```bash
cd ~/devenv/fish_setup
./install.sh
```

### Manual Installation
```bash
# Create Fish config directory
mkdir -p ~/.config/fish/functions

# Copy configuration
cp config.fish ~/.config/fish/
cp -r functions/* ~/.config/fish/functions/
cp -r conf.d ~/.config/fish/
```

### Set as Default Shell
```bash
# Add Fish to valid shells
echo /usr/bin/fish | sudo tee -a /etc/shells

# Change default shell
chsh -s /usr/bin/fish
```

## 🎯 Essential Functions & Commands

### Tmux Management Functions
| Command | Description | Usage Example |
|---------|-------------|---------------|
| `t` | Smart attach/create session | `t` |
| `tn` | Create new named session | `tn project` |
| `tk` | Kill session with FZF preview | `tk` or `tk name` |
| `tl` | List all sessions | `tl` |
| `ts` | Switch sessions with FZF | `ts` |
| `tinfo` | Detailed session overview | `tinfo` |
| `tka` | Kill ALL sessions (confirms) | `tka` |
| `tr` | Rename current session | `tr newname` |
| `tm` | Interactive session manager | `tm` |

### Development Functions
| Command | Description | Usage Example |
|---------|-------------|---------------|
| `gitlog` | Beautiful git history graph | `gitlog` |
| `ports` | Show listening ports | `ports` or `ports 3000` |
| `extract` | Universal archive extractor | `extract file.tar.gz` |

### System Utility Functions
| Command | Description | Usage Example |
|---------|-------------|---------------|
| `backup` | Create timestamped backup | `backup important.conf` |
| `clean` | Clean system cache/temp | `clean` |
| `update` | Update system packages | `update` |

## 📝 Built-in Abbreviations

| Abbreviation | Expands To | Description |
|--------------|------------|-------------|
| `ll` | `ls -lah` | List all with details |
| `la` | `ls -A` | List all files |
| `l` | `ls -CF` | List with indicators |
| `..` | `cd ..` | Go up one directory |
| `...` | `cd ../..` | Go up two directories |
| `g` | `git` | Git shorthand |
| `gs` | `git status` | Git status |
| `ga` | `git add` | Git add |
| `gc` | `git commit` | Git commit |
| `gp` | `git push` | Git push |
| `gl` | `git log --oneline` | Git log compact |
| `gd` | `git diff` | Git diff |
| `gb` | `git branch` | Git branches |
| `gco` | `git checkout` | Git checkout |
| `py` | `python3` | Python shorthand |
| `ipy` | `ipython` | IPython shorthand |
| `vim` | `nvim` | Use Neovim |
| `vi` | `nvim` | Use Neovim |
| `v` | `nvim` | Quick Neovim |

## 🔧 Integrated Development Tools

### Python Environment (via Miniconda)
- **Python 3.11.4**
- **pip/pip3** - Package manager
- **conda** - Environment management
- **uv** - Fast Python package installer

### Node.js Environment (via NVM)
- **Node.js v18.20.3**
- **npm 10.7.0** - Package manager

### Mojo/Modular
- **Modular CLI** at `~/.modular`
- **Mojo** programming language
- Auto-detection of Python libraries

## 🌐 Environment Variables

| Variable | Value | Purpose |
|----------|-------|---------|
| `EDITOR` | `nvim` | Default text editor |
| `VISUAL` | `nvim` | Visual editor |
| `MODULAR_HOME` | `~/.modular` | Modular installation |
| `MOJO_PYTHON_LIBRARY` | Auto-detected | Python library for Mojo |
| `NVM_DIR` | `~/.nvm` | NVM installation |
| `FZF_DEFAULT_OPTS` | Catppuccin theme | FZF appearance |

## 📁 Directory Structure

```
fish_setup/
├── config.fish         # Main configuration
├── functions/          # Custom functions
│   ├── tmux/          # Tmux functions
│   │   ├── t.fish
│   │   ├── tn.fish
│   │   ├── tk.fish
│   │   ├── tl.fish
│   │   ├── ts.fish
│   │   ├── tinfo.fish
│   │   ├── tka.fish
│   │   └── tr.fish
│   ├── dev/           # Development helpers
│   │   ├── gitlog.fish
│   │   ├── ports.fish
│   │   └── extract.fish
│   └── system/        # System utilities
│       ├── backup.fish
│       ├── clean.fish
│       └── update.fish
├── conf.d/            # Auto-loaded configs
│   └── nvm.fish      # NVM configuration
└── README.md         # This file
```

## 🧪 Testing Installation

After installation, test the setup:

```fish
# Start Fish shell
fish

# Test tmux functions
t          # Should start tmux
tl         # Should list sessions
tn test    # Should create 'test' session

# Test dev functions
gitlog     # Should show git graph (in git repo)
ports      # Should show listening ports

# Test Python tools
python --version   # Python 3.11.4
conda --version    # conda 23.5.2
uv --version      # uv 0.3.5

# Test Node.js tools
node --version    # v18.20.3
npm --version     # 10.7.0

# Test editor
nvim --version    # Should open Neovim
```

## 🎨 Color Configuration

Fish uses the `LS_COLORS` environment variable for file colors:
- Directories: Blue
- Executables: Green
- Symlinks: Cyan
- Archives: Red

## 💡 Pro Tips

1. **Tab Completion**: Fish has amazing built-in completions
2. **History Search**: Type partial command and use ↑/↓ arrows
3. **Syntax Highlighting**: Commands turn red if invalid, green if valid
4. **Autosuggestions**: Press → to accept grayed-out suggestions
5. **Web Config**: Run `fish_config` to open web-based configuration

## 🚨 Troubleshooting

### Functions Not Found
```fish
# Reload configuration
source ~/.config/fish/config.fish

# Check function location
type function_name

# List all functions
functions
```

### PATH Issues
```fish
# Check PATH
echo $PATH

# Add to PATH in config.fish
set -gx PATH "$HOME/bin" $PATH
```

### Tmux Functions Not Working
```fish
# Ensure tmux is installed
which tmux

# Check if functions exist
ls ~/.config/fish/functions/t*.fish
```

### Python/Conda Not Found
```fish
# Re-initialize conda for fish
conda init fish

# Restart shell
exec fish
```

### NVM/Node Not Found
```fish
# Check NVM installation
ls ~/.nvm

# Update NVM path in conf.d/nvm.fish
```

## 🔄 Updating

To update the configuration:
```bash
cd ~/devenv
git pull
./fish_setup/install.sh
```

## ❌ Uninstall

To remove Fish configuration:
```bash
# Remove config files
rm -rf ~/.config/fish

# Change default shell back to bash
chsh -s /bin/bash

# Remove from shells list
sudo sed -i '/\/usr\/bin\/fish/d' /etc/shells
```

## 📚 Additional Resources

- [Fish Documentation](https://fishshell.com/docs/current/)
- [Fish Tutorial](https://fishshell.com/docs/current/tutorial.html)
- [Tmux Integration Guide](../tmux_setup/docs/README.md)
- [Nvchad Setup](../nvchad_setup/README.md)

## Author

Abdullah Abdulwahab

## License

MIT - Feel free to use and modify as needed.