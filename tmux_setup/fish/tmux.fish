# ╔══════════════════════════════════════════╗
# ║     TMUX FISH SHELL FUNCTIONS             ║
# ║     Quick commands for tmux management    ║
# ╚══════════════════════════════════════════╝

# Main tmux attach/create function
function t --description "Attach to tmux or create new session"
    if tmux list-sessions &>/dev/null
        # If inside tmux, show session switcher
        if set -q TMUX
            tm
        else
            # Attach to last session
            tmux attach
        end
    else
        # Create new session named 'main'
        tmux new -s main
    end
end

# Create new session
function tn --description "Create new tmux session"
    if test (count $argv) -eq 0
        set session_name (date +%Y%m%d-%H%M%S)
    else
        set session_name $argv[1]
    end

    if tmux has-session -t $session_name 2>/dev/null
        echo "Session '$session_name' already exists"
        return 1
    end

    if set -q TMUX
        tmux new-session -d -s $session_name
        tmux switch-client -t $session_name
    else
        tmux new-session -s $session_name
    end
end

# Kill session
function tk --description "Kill tmux session interactively"
    set sessions (tmux list-sessions -F "#{session_name}" 2>/dev/null)

    if test (count $sessions) -eq 0
        echo "No tmux sessions running"
        return 1
    end

    if test (count $argv) -eq 0
        # Interactive mode with fzf
        set selected (echo $sessions | tr ' ' '\n' | fzf --reverse --header="Select session to kill:")
        if test -n "$selected"
            tmux kill-session -t $selected
            echo "Killed session: $selected"
        end
    else
        # Kill specified session
        tmux kill-session -t $argv[1]
        echo "Killed session: $argv[1]"
    end
end

# List sessions
function tl --description "List all tmux sessions"
    tmux list-sessions 2>/dev/null || echo "No tmux sessions running"
end

# Switch sessions
function ts --description "Switch tmux sessions with fzf"
    set sessions (tmux list-sessions -F "#{session_name}: #{session_windows} windows#{?session_attached, (attached),}" 2>/dev/null)

    if test -z "$sessions"
        echo "No tmux sessions found"
        return 1
    end

    set selected (echo $sessions | tr '\n' '\n' | \
        fzf --reverse --header="Select session to switch to:" \
            --preview="tmux list-windows -t {1}" \
            --preview-window=right:40%)

    if test -n "$selected"
        set session_name (echo $selected | cut -d: -f1)
        if set -q TMUX
            tmux switch-client -t $session_name
        else
            tmux attach-session -t $session_name
        end
    end
end

# Kill all sessions
function tka --description "Kill all tmux sessions"
    read -P "Kill ALL tmux sessions? This cannot be undone! (yes/no): " confirm
    if test "$confirm" = "yes"
        tmux kill-server
        echo "All tmux sessions killed"
    else
        echo "Cancelled"
    end
end

# Rename current session
function tr --description "Rename current tmux session"
    if not set -q TMUX
        echo "Not in a tmux session"
        return 1
    end

    if test (count $argv) -eq 0
        read -P "Enter new session name: " new_name
    else
        set new_name $argv[1]
    end

    if test -n "$new_name"
        tmux rename-session $new_name
        echo "Renamed session to: $new_name"
    end
end