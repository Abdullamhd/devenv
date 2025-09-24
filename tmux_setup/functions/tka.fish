function tka --description "Kill all tmux sessions"
    read -P "Kill ALL tmux sessions? This cannot be undone! (yes/no): " confirm
    if test "$confirm" = "yes"
        tmux kill-server
        echo "All tmux sessions killed"
    else
        echo "Cancelled"
    end
end