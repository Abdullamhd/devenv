function tk --description "Kill tmux session interactively with preview"
    set sessions (tmux list-sessions 2>/dev/null)

    if test -z "$sessions"
        echo "No tmux sessions running"
        return 1
    end

    if test (count $argv) -eq 0
        # Interactive mode with fzf and preview
        # Shows: session_number: windows (created date) (attached status)
        # Preview shows the windows in that session
        set selected (echo "$sessions" | \
            fzf --reverse \
                --header="📋 Select session to kill (shows number: name/windows)" \
                --preview="tmux list-windows -t {1} 2>/dev/null || echo 'Session: {1}'" \
                --preview-window=right:40% \
                --bind="ctrl-r:reload(tmux list-sessions)" | \
            cut -d: -f1)

        if test -n "$selected"
            # Confirm before killing
            echo "About to kill session: $selected"
            read -P "Are you sure? (y/n): " confirm
            if test "$confirm" = "y"
                tmux kill-session -t $selected
                echo "✅ Killed session: $selected"
            else
                echo "❌ Cancelled"
            end
        end
    else
        # Kill specified session (by number or name)
        tmux kill-session -t $argv[1]
        echo "Killed session: $argv[1]"
    end
end