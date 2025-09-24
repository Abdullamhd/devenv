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