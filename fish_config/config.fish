# Fish Shell Configuration
# Minimal clean config for Fish 3.7.1

# Disable welcome message
set -g fish_greeting

# Initialize conda for Fish (includes uv, conda, python tools)
if test -f ~/miniconda3/bin/conda
    eval ~/miniconda3/bin/conda "shell.fish" "hook" $argv | source
end

if status is-interactive
    # Commands to run in interactive sessions can go here

    # Initialize zoxide (smart cd replacement)
    if command -v zoxide &> /dev/null
        zoxide init fish | source
    end
end

# Add Neovim to PATH
if test -d /opt/nvim-linux64/bin
    fish_add_path -p /opt/nvim-linux64/bin
end

# Python alias (use python instead of python3)
alias python=python3
alias pip=pip3
