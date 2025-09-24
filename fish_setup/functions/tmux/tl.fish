function tl --description "List all tmux sessions"
    tmux list-sessions 2>/dev/null || echo "No tmux sessions running"
end