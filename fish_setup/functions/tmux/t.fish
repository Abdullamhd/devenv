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