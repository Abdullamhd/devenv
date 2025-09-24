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