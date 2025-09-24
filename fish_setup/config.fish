
# Fish Shell Configuration
# Created by Abdullah Abdulwahab

# Set custom greeting
set -U fish_greeting "Welcome to Fish Shell! 🐟"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /home/abdullah/miniconda3/bin/conda
    eval /home/abdullah/miniconda3/bin/conda "shell.fish" "hook" $argv | source
end
# <<< conda initialize <<<

# PATH Configuration
# Add user's private bin directories
if test -d "$HOME/bin"
    set -gx PATH "$HOME/bin" $PATH
end

if test -d "$HOME/.local/bin"
    set -gx PATH "$HOME/.local/bin" $PATH
end

# Modular/Mojo Configuration
set -gx MODULAR_HOME "$HOME/.modular"
set -gx PATH "$MODULAR_HOME/pkg/packages.modular.com_mojo/bin" $PATH

# Ensure system binaries are in PATH
set -gx PATH $PATH "/usr/bin"

# Miniconda/Python/UV are already in PATH via conda initialization
# The conda init above adds ~/miniconda3/bin to PATH which includes:
# - python, python3, pip, pip3
# - conda
# - uv, uvx, uvicorn

# Set default editor
set -gx EDITOR "nvim"
set -gx VISUAL "nvim"

# Aliases and Abbreviations
abbr -a ll 'ls -lah'
abbr -a la 'ls -A'
abbr -a l 'ls -CF'
abbr -a .. 'cd ..'
abbr -a ... 'cd ../..'
abbr -a g 'git'
abbr -a gs 'git status'
abbr -a gc 'git commit'
abbr -a gp 'git push'
abbr -a gl 'git log --oneline'
abbr -a py 'python3'
abbr -a ipy 'ipython'

# Colors for ls
set -gx LS_COLORS 'di=38;5;71:ln=1;36:so=1;35:pi=33:ex=1;32:bd=34;46:cd=34;43'

