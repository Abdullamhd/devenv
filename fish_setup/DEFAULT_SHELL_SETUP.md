# Fish as Default Shell - Setup Documentation

## Changes Made

Fish shell is now configured as your default terminal shell. Here's what was done:

### 1. System Default Shell Change
- **Changed via `chsh`**: Your default login shell has been changed from `/bin/bash` to `/usr/bin/fish`
- **Location**: Updated in `/etc/passwd`
- **Status**: ✅ Active

### 2. Bash Fallback Configuration
- **Added to `.bashrc`**: Auto-launch Fish if available (lines 157-163)
- **Purpose**: Ensures Fish runs even if terminal doesn't respect chsh
- **Bypass**: Use `bash --norc` to stay in bash

### 3. Windows Terminal Configuration
- **Config file**: `windows_terminal_config.json` provided
- **Purpose**: Direct Fish launch from Windows Terminal
- **Command**: `wsl.exe -d Ubuntu -- fish`

## How It Works

When you open a terminal:

1. **Primary Method**: System launches `/usr/bin/fish` directly (via chsh change)
2. **Fallback Method**: If bash starts, it auto-executes Fish (via .bashrc)
3. **Windows Terminal**: Can be configured to launch Fish directly

## Verification

Current configuration status:
```
Default Shell: /usr/bin/fish
Fish Version: 3.3.1
Location: /usr/bin/fish
```

## Available Development Tools in Fish

All tools remain accessible:
- **Python**: 3.11.4 (Miniconda)
- **Node.js**: v18.20.3 (NVM)
- **UV**: 0.3.5
- **Conda**: 23.5.2
- **npm**: 10.7.0
- **Mojo**: Via MODULAR_HOME

## How to Use

### Normal Usage
Simply open your terminal - Fish will start automatically!

### Force Bash Session
If you need bash temporarily:
```bash
bash --norc  # Starts bash without loading .bashrc (avoids Fish)
bash         # Normal bash (will auto-switch to Fish due to .bashrc)
```

### Switch Back to Bash Permanently
If you want to revert to bash as default:
```bash
chsh -s /bin/bash
# Enter password when prompted
```

Then optionally remove the Fish fallback from `.bashrc`:
- Edit `~/.bashrc`
- Remove lines 157-163 (the Fish auto-launch section)

## Windows Terminal Setup (Optional)

If using Windows Terminal:

1. Open Windows Terminal
2. Press `Ctrl+,` to open Settings
3. Click "Open JSON file" at bottom left
4. Find your Ubuntu profile in `profiles` → `list`
5. Change `commandline` to: `"wsl.exe -d Ubuntu -- fish"`
6. Save the file

## Testing the Setup

Test commands to verify everything works:

```fish
# In Fish shell, test tools:
echo $SHELL          # Should show /usr/bin/fish
python --version     # Python 3.11.4
node --version       # v18.20.3
uv --version         # uv 0.3.5
conda --version      # conda 23.5.2

# Check environment variables:
echo $MODULAR_HOME   # Should show ~/.modular
echo $MOJO_PYTHON_LIBRARY  # Should show Python library path
```

## Troubleshooting

### Terminal Still Opens Bash
1. Close all terminal windows
2. Open a fresh terminal
3. If still in bash, check if it auto-switches to Fish
4. For Windows Terminal, ensure settings.json is saved

### Tools Not Found
1. Reload Fish configuration:
   ```fish
   source ~/.config/fish/config.fish
   ```

2. Check PATH:
   ```fish
   echo $PATH
   ```

### Need to Access Bash
- Quick bash session: `bash --norc`
- With full config: `bash`
- Permanent switch: `chsh -s /bin/bash`

## Summary

✅ Fish is now your default shell
✅ All development tools remain accessible
✅ Fallback mechanism in place
✅ Can easily switch back if needed

---
*Configuration completed: $(date)*
*By: Abdullah Abdulwahab*