function backup --description "Create timestamped backup of file or directory"
    if test (count $argv) -eq 0
        echo "Usage: backup <file/directory>"
        return 1
    end

    set target $argv[1]
    set timestamp (date +%Y%m%d_%H%M%S)
    set backup_name "$target.backup_$timestamp"

    if test -e $target
        cp -r $target $backup_name
        echo "✅ Created backup: $backup_name"
    else
        echo "Error: '$target' does not exist"
        return 1
    end
end