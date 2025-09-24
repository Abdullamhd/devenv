#!/bin/bash
# Common environment variables

# Editor
export EDITOR="nvim"
export VISUAL="nvim"

# Language
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

# History
export HISTSIZE=10000
export HISTFILESIZE=20000

# FZF Configuration
export FZF_DEFAULT_OPTS='
  --height 40%
  --layout=reverse
  --border
  --preview-window=right:60%
  --color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8
  --color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc
  --color=marker:#f5e0dc,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8'

# Development paths
export PATH="$HOME/bin:$HOME/.local/bin:$PATH"

# Python
export PYTHONDONTWRITEBYTECODE=1
export PYTHONUNBUFFERED=1

# Colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# Man pages color
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'

# WSL specific
if grep -qi microsoft /proc/version; then
    # WSL2 specific settings
    export DISPLAY="$(grep nameserver /etc/resolv.conf | sed 's/nameserver //'):0"
    export LIBGL_ALWAYS_INDIRECT=1
fi