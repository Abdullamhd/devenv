# Fish Shell Configuration

This directory contains the complete Fish shell configuration with all development tools properly integrated.

## Features

- **Fish Shell 3.3.1**: Modern, user-friendly command line shell
- **Full Development Environment**: All tools accessible from Fish shell
- **Auto-completions**: Enhanced command line experience with intelligent suggestions
- **Custom Functions**: Useful functions for development workflow

## Integrated Tools

### Python Environment
- **Python 3.11.4** (via Miniconda)
- **Miniconda 23.5.2** at `~/miniconda3`
- **UV 0.3.5** - Fast Python package installer
- **pip/pip3** - Traditional Python package manager
- **conda** - Environment and package management

### Node.js Environment
- **Node.js v18.20.3** (via NVM)
- **npm 10.7.0** - Node package manager
- Path: `~/.nvm/versions/node/v18.20.3/bin`

### Mojo/Modular
- **Modular CLI** configured at `~/.modular`
- **Mojo** programming language support
- Automatic Python library detection for Mojo integration

## Installation

### 1. Install Fish Shell
```bash
sudo apt update
sudo apt install -y fish
```

### 2. Restore Configuration
```bash
# Create Fish config directory
mkdir -p ~/.config/fish

# Copy all configuration files
cp -r ./config.fish ~/.config/fish/
cp -r ./functions ~/.config/fish/
cp -r ./conf.d ~/.config/fish/
cp -r ./completions ~/.config/fish/
```

### 3. Initialize Conda for Fish
```bash
# If conda is already installed
conda init fish
```

### 4. Set Fish as Default Shell (Optional)
```bash
# Add Fish to valid shells if not already added
echo /usr/bin/fish | sudo tee -a /etc/shells

# Change default shell
chsh -s /usr/bin/fish
```

## Configuration Files

### `config.fish`
Main configuration file containing:
- PATH configurations for all tools
- Environment variables (MODULAR_HOME, EDITOR, etc.)
- Conda initialization
- Custom abbreviations and aliases
- Color settings

### `functions/find_python_for_mojo.fish`
Custom function to detect and set Python library for Mojo:
- Automatically finds Python shared library
- Sets `MOJO_PYTHON_LIBRARY` environment variable
- Runs on shell startup

### `conf.d/nvm.fish`
NVM configuration for Fish:
- Adds Node.js to PATH
- Sets NVM_DIR environment variable

## Custom Abbreviations

| Abbreviation | Command | Description |
|--------------|---------|-------------|
| `ll` | `ls -lah` | List all files with details |
| `la` | `ls -A` | List all files |
| `l` | `ls -CF` | List files with indicators |
| `..` | `cd ..` | Go up one directory |
| `...` | `cd ../..` | Go up two directories |
| `g` | `git` | Git shorthand |
| `gs` | `git status` | Git status |
| `gc` | `git commit` | Git commit |
| `gp` | `git push` | Git push |
| `gl` | `git log --oneline` | Git log one-line |
| `py` | `python3` | Python shorthand |
| `ipy` | `ipython` | IPython shorthand |

## Environment Variables

| Variable | Value | Purpose |
|----------|-------|---------|
| `MODULAR_HOME` | `~/.modular` | Modular installation directory |
| `MOJO_PYTHON_LIBRARY` | Auto-detected | Python library for Mojo |
| `EDITOR` | `nvim` | Default text editor |
| `VISUAL` | `nvim` | Visual editor |
| `NVM_DIR` | `~/.nvm` | NVM installation directory |

## Testing the Installation

After installation, test all tools:

```fish
# Start Fish shell
fish

# Test Python tools
python --version  # Should show Python 3.11.4
uv --version     # Should show uv 0.3.5
conda --version  # Should show conda 23.5.2

# Test Node.js tools
node --version   # Should show v18.20.3
npm --version    # Should show 10.7.0

# Test environment variables
echo $MODULAR_HOME    # Should show ~/.modular
echo $MOJO_PYTHON_LIBRARY  # Should show path to Python library
```

## Troubleshooting

### Tools not found in PATH
If any tools are not accessible, ensure their paths are correctly set:

1. Check if the tool is installed:
   ```fish
   which python
   which node
   which uv
   ```

2. Reload Fish configuration:
   ```fish
   source ~/.config/fish/config.fish
   ```

3. For conda environments:
   ```fish
   conda activate base
   ```

### NVM Node not found
If Node.js installed via NVM is not found:

1. Check NVM installation:
   ```bash
   ls ~/.nvm/versions/node/
   ```

2. Update the path in `~/.config/fish/conf.d/nvm.fish` with your Node version

### Mojo Python library issues
If Mojo can't find Python library:

1. Run the function manually:
   ```fish
   find_python_for_mojo
   ```

2. Check the output and ensure the library exists

## Author
Abdullah Abdulwahab

## Created
$(date)