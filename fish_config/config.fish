# Fish Shell Configuration
# Minimal clean config for Fish 3.7.1

# Disable welcome message
set -g fish_greeting

if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Add Neovim to PATH
if test -d /opt/nvim-linux64/bin
    fish_add_path -p /opt/nvim-linux64/bin
end

# Python alias (use python instead of python3)
alias python=python3
alias pip=pip3
