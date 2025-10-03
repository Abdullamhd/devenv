# Fish Shell Setup Guide

Complete setup for Fish 3.7.1 with fzf.fish plugin for enhanced history search.

## Prerequisites

- Ubuntu 22.04 (or compatible Linux distribution)
- sudo access

## Installation Steps

### 1. Add Fish Shell Official PPA

```bash
sudo add-apt-repository ppa:fish-shell/release-3 -y
sudo apt update
```

### 2. Install Fish 3.7.1

```bash
sudo apt install fish -y
```

Verify installation:
```bash
fish --version
# Should show: fish, version 3.7.1
```

### 3. Upgrade fzf to Latest Version

Fish shell plugins require fzf 0.53+ for modern features.

```bash
# Download latest fzf
cd /tmp
wget https://github.com/junegunn/fzf/releases/download/v0.56.3/fzf-0.56.3-linux_amd64.tar.gz
tar -xzf fzf-0.56.3-linux_amd64.tar.gz
sudo mv fzf /usr/bin/fzf
rm fzf-0.56.3-linux_amd64.tar.gz

# Verify
fzf --version
# Should show: 0.56.3 (add1aec)
```

### 4. Install Fisher Plugin Manager

```bash
fish -c "curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher"
```

### 5. Install fzf.fish Plugin

```bash
fish -c "fisher install PatrickF1/fzf.fish"
```

### 6. Configure Fish Shell

Copy the config file from this repo:

```bash
cp fish_config/config.fish ~/.config/fish/config.fish
source ~/.config/fish/config.fish
```

Or manually add to `~/.config/fish/config.fish`:

```fish
# Disable welcome message
set -g fish_greeting

# Add miniconda3 tools to PATH (includes uv, python tools)
if test -d ~/miniconda3/bin
    fish_add_path -p ~/miniconda3/bin
end

if status is-interactive
    # Initialize zoxide (smart cd replacement)
    if command -v zoxide &> /dev/null
        zoxide init fish | source
    end
end

# Add Neovim to PATH
if test -d /opt/nvim-linux64/bin
    fish_add_path -p /opt/nvim-linux64/bin
end

# Python alias
alias python=python3
alias pip=pip3
```

Verify:
```bash
which nvim    # Should show: /opt/nvim-linux64/bin/nvim
which uv      # Should show: /home/abdullah/miniconda3/bin/uv
which python  # Should show: python is /home/abdullah/miniconda3/bin/python3
z --version   # Should show zoxide version
```

## Features

After setup, you'll have:

### Interactive History Search
- **Ctrl+r** - Beautiful fzf-powered history search
  - Type to fuzzy filter commands
  - Arrow keys to navigate
  - Enter to execute
  - Tab to edit before executing

### Additional fzf Shortcuts
- **Ctrl+Alt+f** - Search files in current directory
- **Ctrl+Alt+l** - Search git log
- **Ctrl+Alt+s** - Search git status (changed files)
- **Ctrl+v** - Search shell variables

## Testing

Open a new Fish shell:
```bash
fish
```

Test Ctrl+r:
1. Press `Ctrl+r`
2. You should see an interactive history list
3. Type to search, use arrows to navigate
4. Press Enter to execute a command

## Configuration

Fish config is minimal and located at:
- `~/.config/fish/config.fish` (main config)
- `~/.config/fish/functions/` (custom functions)
- `~/.config/fish/conf.d/` (plugin configs)

## Versions

- **Fish**: 3.7.1 (latest stable 3.x)
- **fzf**: 0.56.3 (latest stable)
- **fzf.fish**: Latest from PatrickF1/fzf.fish
- **Fisher**: 4.4.5

## Troubleshooting

### "unknown option: --scheme=history"
Your fzf is too old. Upgrade to fzf 0.56+ using Step 3 above.

### Ctrl+r not working
1. Verify fzf.fish is installed: `fish -c "fisher list"`
2. Check bindings: `fish -c "bind | grep cr"`
3. Reinstall: `fish -c "fisher remove PatrickF1/fzf.fish && fisher install PatrickF1/fzf.fish"`

### No fzf command found
Install fzf using Step 3 above.

## Additional Resources

- [Fish Documentation](https://fishshell.com/docs/current/)
- [fzf.fish GitHub](https://github.com/PatrickF1/fzf.fish)
- [fzf GitHub](https://github.com/junegunn/fzf)

---
**Last Updated**: October 2025
