function tinfo --description "Show detailed tmux session info"
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    echo "📊 TMUX SESSIONS OVERVIEW"
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

    set sessions (tmux list-sessions -F "#{session_name}" 2>/dev/null)

    if test -z "$sessions"
        echo "No tmux sessions running"
        return 1
    end

    for session in $sessions
        # Get session info
        set session_info (tmux list-sessions -F "#{session_name}:#{session_windows}:#{session_created}:#{?session_attached,ATTACHED,}" | grep "^$session:")
        set windows_count (echo $session_info | cut -d: -f2)
        set created (echo $session_info | cut -d: -f3)
        set attached (echo $session_info | cut -d: -f4)

        # Format header
        if test -n "$attached"
            echo ""
            echo "🟢 Session: $session [$windows_count windows] (ATTACHED)"
        else
            echo ""
            echo "⚪ Session: $session [$windows_count windows]"
        end
        echo "   Created: "(date -d @$created +"%Y-%m-%d %H:%M:%S" 2>/dev/null || date -r $created +"%Y-%m-%d %H:%M:%S")

        # Show windows
        echo "   Windows:"
        tmux list-windows -t $session -F "      #{window_index}: #{window_name} (#{window_panes} panes)#{?window_active, ← ACTIVE,}"
    end

    echo ""
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    echo "Quick commands: tk (kill), ts (switch), tn (new)"
end