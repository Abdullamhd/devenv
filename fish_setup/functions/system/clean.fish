function clean --description "Clean system cache and temp files"
    echo "🧹 Cleaning system..."

    # APT cache (if sudo available)
    if command -q sudo
        echo "Cleaning APT cache..."
        sudo apt autoremove -y
        sudo apt autoclean -y
    end

    # Fish history duplicates
    if test -f ~/.local/share/fish/fish_history
        echo "Cleaning fish history duplicates..."
        set temp_file (mktemp)
        awk '!seen[$0]++' ~/.local/share/fish/fish_history > $temp_file
        mv $temp_file ~/.local/share/fish/fish_history
    end

    # Thumbnails cache
    if test -d ~/.cache/thumbnails
        echo "Cleaning thumbnails..."
        rm -rf ~/.cache/thumbnails/*
    end

    # Temp files
    echo "Cleaning temp files..."
    find /tmp -type f -atime +7 -delete 2>/dev/null || true

    echo "✅ Cleanup complete!"
end