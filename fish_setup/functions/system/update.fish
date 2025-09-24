function update --description "Update system packages and tools"
    echo "📦 System Update"
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

    # Update package lists
    echo "🔄 Updating package lists..."
    sudo apt update

    # Show upgradable packages
    set upgradable (apt list --upgradable 2>/dev/null | grep -c upgradable)
    if test $upgradable -gt 0
        echo "📋 $upgradable packages can be upgraded"
        read -P "Proceed with upgrade? (y/n): " confirm
        if test "$confirm" = "y"
            sudo apt upgrade -y
        end
    else
        echo "✅ System is up to date"
    end

    # Update snap packages if available
    if command -q snap
        echo "🔄 Updating snap packages..."
        sudo snap refresh
    end

    # Update fish completions
    if command -q fish_update_completions
        echo "🐟 Updating fish completions..."
        fish_update_completions
    end

    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    echo "✅ Update complete!"
end