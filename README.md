# 🚀 DevEnv - Development Environment Configuration

Complete development environment setup for WSL/Linux with Fish shell, Tmux, and Nvchad.

## ✨ Features

- **🐟 Fish Shell** - Modern shell with autosuggestions and syntax highlighting
- **🖥️ Tmux** - Terminal multiplexer with session management
- **📝 Nvchad** - Neovim configuration with IDE features
- **🔧 WSL Optimized** - Special configurations for Windows Subsystem for Linux
- **📦 One-Command Setup** - Install everything with a single script

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

### Tmux (Prefix: `Ctrl+a`)
| Command | Action |
|---------|--------|
| `Ctrl+a` `c` | New window |
| `Ctrl+a` `n` | New session |
| `Ctrl+a` `s` | Switch sessions |
| `Ctrl+a` `d` | Detach |
| `Ctrl+a` `\|` | Split vertical |
| `Ctrl+a` `-` | Split horizontal |
| `Ctrl+a` `1-9` | Switch to window |

### Fish Functions
| Command | Description |
|---------|-------------|
| `t` | Attach/create tmux session |
| `tn NAME` | New named session |
| `tk` | Kill session (interactive) |
| `tl` | List sessions |
| `ts` | Switch sessions |
| `tm` | Session manager |

### Nvchad
| Keybinding | Action |
|------------|--------|
| `Space` | Leader key |
| `Space` `f` `f` | Find files |
| `Space` `f` `w` | Live grep |
| `Ctrl` `n` | File tree |
| `Space` `c` `h` | Cheatsheet |

## 🔧 Configuration Files

- **Fish**: `~/.config/fish/config.fish`
- **Tmux**: `~/.tmux.conf`
- **Nvim**: `~/.config/nvim/`

## 📚 Documentation

- [Quick Commands Reference](docs/QUICK_COMMANDS.md)
- [Session Management Guide](tmux_setup/docs/SESSION_MASTERY_GUIDE.md)
- [Troubleshooting](docs/TROUBLESHOOTING.md)
- [Windows Terminal Setup](tmux_setup/docs/WINDOWS_TERMINAL_FIX.md)

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