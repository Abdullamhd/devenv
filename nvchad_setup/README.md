# NvChad Configuration Backup

This directory contains backups of my NeoVim configuration based on NvChad.

## Structure

```
nvchad_setup/
├── current/       # Current active NvChad configuration
│   ├── init.lua   # Main initialization file
│   ├── lua/       # Lua configuration files
│   │   ├── chadrc.lua
│   │   ├── configs/
│   │   ├── mappings.lua
│   │   ├── options.lua
│   │   └── plugins/
│   └── lazy-lock.json  # Plugin versions lock file
└── backup/        # Previous configuration backup
    ├── init.lua
    ├── lua/
    └── .git/      # Previous git history
```

## Installation

To restore these configurations on a new system:

1. **Install NeoVim** (version 0.9.0 or higher recommended)
   ```bash
   # Ubuntu/Debian
   sudo apt install neovim

   # macOS
   brew install neovim
   ```

2. **Backup existing config** (if any)
   ```bash
   mv ~/.config/nvim ~/.config/nvim.backup
   ```

3. **Restore configuration**
   ```bash
   # To use current configuration
   cp -r ./current ~/.config/nvim

   # To use backup configuration
   cp -r ./backup ~/.config/nvim
   ```

4. **Install plugins**
   Open NeoVim and let Lazy.nvim automatically install all plugins:
   ```bash
   nvim
   ```

## Configuration Details

### Current Configuration
- Based on NvChad framework
- Custom mappings and options configured
- Includes LSP configurations for multiple languages
- Treesitter for enhanced syntax highlighting
- Neo-tree for file exploration
- Conform for code formatting
- Comment.nvim for easy commenting

### Key Files
- `lua/chadrc.lua` - Main NvChad configuration
- `lua/mappings.lua` - Custom key mappings
- `lua/options.lua` - NeoVim options
- `lua/plugins/init.lua` - Plugin definitions
- `lua/configs/` - Individual plugin configurations

## Backup Date
Created on: $(date)

## Author
Abdullah Abdulwahab