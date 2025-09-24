#!/bin/bash
# Common aliases for all shells

# Navigation
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Git shortcuts
alias g='git'
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gl='git log --oneline'
alias gd='git diff'
alias gb='git branch'
alias gco='git checkout'

# Safety nets
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# System
alias ports='netstat -tulanp'
alias update='sudo apt update && sudo apt upgrade'
alias install='sudo apt install'
alias search='apt search'
alias df='df -h'
alias du='du -h'
alias free='free -h'

# Development
alias py='python3'
alias ipy='ipython'
alias serve='python3 -m http.server'
alias json='python3 -m json.tool'

# Docker (if installed)
alias d='docker'
alias dc='docker-compose'
alias dps='docker ps'
alias dim='docker images'

# Quick edits
alias vimrc='nvim ~/.config/nvim/'
alias fishconf='nvim ~/.config/fish/config.fish'
alias tmuxconf='nvim ~/.tmux.conf'
alias reload='source ~/.config/fish/config.fish'

# Tmux quick commands (works in bash too)
alias ta='tmux attach || tmux new -s main'
alias tls='tmux ls'
alias tnew='tmux new -s'

# WSL specific (if in WSL)
if grep -qi microsoft /proc/version; then
    alias explorer='explorer.exe .'
    alias code='code.exe .'
fi