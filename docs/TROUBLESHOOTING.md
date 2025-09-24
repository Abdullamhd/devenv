# 🔧 Troubleshooting Guide

## Common Issues and Solutions

### Tmux Issues

#### Alt keys not working in Windows Terminal
**Problem**: Alt+n, Alt+s etc. don't work in tmux

**Solution**:
1. Open Windows Terminal settings (`Ctrl+,`)
2. Go to **Interaction** section
3. Turn OFF "Use Alt as menu key"
4. Restart Windows Terminal

**Alternative**: Use `Ctrl+a` prefix instead (already configured)

#### "Sessions should be nested with care"
**Problem**: Trying to start tmux inside tmux

**Solution**: Use `Ctrl+a s` to switch sessions instead of creating new one

#### Can't find session
**Problem**: Session name not found

**Solution**:
```bash
tmux ls              # Check exact session names
tmux attach -t 10    # Use session number
tk                   # Interactive kill with preview
```

### Fish Shell Issues

#### Command not found after installation
**Problem**: Fish functions not available

**Solution**:
```bash
# Reload fish config
source ~/.config/fish/config.fish

# Or restart terminal
exit
```

#### PATH not updated
**Problem**: ~/bin not in PATH

**Solution**:
Add to `~/.config/fish/config.fish`:
```fish
set -gx PATH "$HOME/bin" $PATH
```

### Nvchad Issues

#### Plugins not loading
**Problem**: Nvim plugins not installed

**Solution**:
```bash
nvim
:Lazy sync     # Inside nvim
:TSUpdate      # Update treesitter
```

#### LSP not working
**Problem**: Language servers not installed

**Solution**:
```bash
nvim
:Mason         # Open Mason
# Install required LSPs
```

### WSL Specific Issues

#### Slow performance
**Problem**: File operations are slow

**Solution**:
- Keep projects in Linux filesystem (`~/` not `/mnt/c/`)
- Disable Windows Defender for WSL folders
- Use WSL2 instead of WSL1

#### Display issues
**Problem**: GUI apps not working

**Solution**:
```bash
# Add to ~/.config/fish/config.fish
set -gx DISPLAY (grep nameserver /etc/resolv.conf | sed 's/nameserver //'):0
```

### General Fixes

#### Reset to defaults
```bash
# Backup current config
backup ~/.config/fish
backup ~/.tmux.conf
backup ~/.config/nvim

# Reinstall
./SETUP_ALL.sh
```

#### Check installation
```bash
# Check installed versions
fish --version
tmux -V
nvim --version

# Check if functions exist
type t
type tm
type tn
```

#### Permission denied
```bash
# Fix script permissions
chmod +x ~/devenv/*.sh
chmod +x ~/devenv/**/*.sh
chmod +x ~/bin/tm
```

## Getting Help

1. Check documentation:
   - [README](../README.md)
   - [Session Guide](../tmux_setup/docs/SESSION_MASTERY_GUIDE.md)
   - [Quick Commands](../tmux_setup/docs/QUICK_COMMANDS.md)

2. Test individual components:
   ```bash
   ./fish_setup/install.sh
   ./tmux_setup/install.sh
   ./nvchad_setup/install.sh
   ```

3. Check logs:
   ```bash
   # Tmux server log
   tmux show-messages

   # Fish debug
   fish --debug=3
   ```

## Reset Everything

If all else fails, complete reset:
```bash
# Remove all configs
rm -rf ~/.config/fish
rm -rf ~/.config/nvim
rm ~/.tmux.conf
rm -rf ~/bin/tm

# Reinstall
cd ~/devenv
./SETUP_ALL.sh
```