function ports --description "Show listening ports and processes"
    if test (count $argv) -eq 0
        echo "Active listening ports:"
        sudo netstat -tulpn | grep LISTEN
    else
        echo "Checking port $argv[1]:"
        sudo lsof -i :$argv[1]
    end
end