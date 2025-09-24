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