#!/bin/bash

# ╔══════════════════════════════════════════╗
# ║     DEVENV MASTER INSTALLER               ║
# ║     Complete Development Environment      ║
# ╚══════════════════════════════════════════╝

set -e  # Exit on error

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

# Get script directory
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Banner
echo -e "${CYAN}╔══════════════════════════════════════════╗${NC}"
echo -e "${CYAN}║     🚀 DEVENV SETUP INSTALLER 🚀          ║${NC}"
echo -e "${CYAN}║     Fish + Tmux + Nvchad                  ║${NC}"
echo -e "${CYAN}╚══════════════════════════════════════════╝${NC}"
echo

# Detect OS
if grep -qi microsoft /proc/version; then
    echo -e "${BLUE}🔍 Detected: WSL/WSL2${NC}"
    OS="WSL"
elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
    echo -e "${BLUE}🔍 Detected: Linux${NC}"
    OS="Linux"
elif [[ "$OSTYPE" == "darwin"* ]]; then
    echo -e "${BLUE}🔍 Detected: macOS${NC}"
    OS="Mac"
else
    echo -e "${RED}⚠️  Unknown OS: $OSTYPE${NC}"
    exit 1
fi

# Function to create backup
backup_config() {
    local config_path=$1
    local config_name=$2

    if [ -e "$config_path" ]; then
        local backup_name="${config_path}.backup.$(date +%Y%m%d_%H%M%S)"
        cp -r "$config_path" "$backup_name"
        echo -e "${GREEN}  ✓ Backed up $config_name to $backup_name${NC}"
    fi
}

# Function to install component
install_component() {
    local component=$1
    local script_path="$SCRIPT_DIR/${component}_setup/install.sh"

    echo -e "${YELLOW}Installing $component...${NC}"

    if [ -f "$script_path" ]; then
        bash "$script_path"
    else
        echo -e "${RED}  ✗ Installer not found: $script_path${NC}"
        return 1
    fi

    echo -e "${GREEN}  ✓ $component installed${NC}"
}

# Function to copy functions
copy_functions() {
    echo -e "${YELLOW}[*] Installing custom functions...${NC}"

    # Fish functions
    if [ -d "$SCRIPT_DIR/fish_setup/functions" ]; then
        mkdir -p ~/.config/fish/functions

        # Copy tmux functions
        if [ -d "$SCRIPT_DIR/fish_setup/functions/tmux" ]; then
            cp -r "$SCRIPT_DIR/fish_setup/functions/tmux/"*.fish ~/.config/fish/functions/ 2>/dev/null || true
            echo -e "${GREEN}  ✓ Tmux functions installed${NC}"
        fi

        # Copy dev functions
        if [ -d "$SCRIPT_DIR/fish_setup/functions/dev" ]; then
            cp -r "$SCRIPT_DIR/fish_setup/functions/dev/"*.fish ~/.config/fish/functions/ 2>/dev/null || true
            echo -e "${GREEN}  ✓ Dev functions installed${NC}"
        fi

        # Copy system functions
        if [ -d "$SCRIPT_DIR/fish_setup/functions/system" ]; then
            cp -r "$SCRIPT_DIR/fish_setup/functions/system/"*.fish ~/.config/fish/functions/ 2>/dev/null || true
            echo -e "${GREEN}  ✓ System functions installed${NC}"
        fi
    fi
}

# Menu
echo -e "${BLUE}What would you like to install?${NC}"
echo "  1) Everything (Fish + Tmux + Nvchad)"
echo "  2) Fish Shell only"
echo "  3) Tmux only"
echo "  4) Nvchad only"
echo "  5) Just copy configs (no package installation)"
echo "  6) Exit"
echo

read -p "Enter your choice [1-6]: " choice

case $choice in
    1)
        echo -e "${CYAN}Installing everything...${NC}"

        # Backup existing configs
        echo -e "${YELLOW}Creating backups...${NC}"
        backup_config ~/.config/fish "Fish"
        backup_config ~/.tmux.conf "Tmux"
        backup_config ~/.config/nvim "Nvim"

        # Install components
        install_component "fish"
        install_component "tmux"
        install_component "nvchad"

        # Copy all functions
        copy_functions

        echo -e "${GREEN}✅ All components installed!${NC}"
        ;;

    2)
        echo -e "${CYAN}Installing Fish Shell...${NC}"
        backup_config ~/.config/fish "Fish"
        install_component "fish"
        copy_functions
        ;;

    3)
        echo -e "${CYAN}Installing Tmux...${NC}"
        backup_config ~/.tmux.conf "Tmux"
        install_component "tmux"

        # Install tmux functions if fish exists
        if command -v fish &> /dev/null; then
            mkdir -p ~/.config/fish/functions
            cp "$SCRIPT_DIR/fish_setup/functions/tmux/"*.fish ~/.config/fish/functions/ 2>/dev/null || true
            echo -e "${GREEN}  ✓ Tmux fish functions installed${NC}"
        fi
        ;;

    4)
        echo -e "${CYAN}Installing Nvchad...${NC}"
        backup_config ~/.config/nvim "Nvim"
        install_component "nvchad"
        ;;

    5)
        echo -e "${CYAN}Copying configs only...${NC}"

        # Copy tmux config
        if [ -f "$SCRIPT_DIR/tmux_setup/tmux.conf" ]; then
            backup_config ~/.tmux.conf "Tmux"
            cp "$SCRIPT_DIR/tmux_setup/tmux.conf" ~/.tmux.conf
            echo -e "${GREEN}  ✓ Tmux config copied${NC}"
        fi

        # Copy fish config
        if [ -f "$SCRIPT_DIR/fish_setup/config.fish" ]; then
            backup_config ~/.config/fish/config.fish "Fish"
            mkdir -p ~/.config/fish
            cp "$SCRIPT_DIR/fish_setup/config.fish" ~/.config/fish/
            echo -e "${GREEN}  ✓ Fish config copied${NC}"
        fi

        # Copy functions
        copy_functions

        echo -e "${GREEN}✅ Configs copied!${NC}"
        ;;

    6)
        echo -e "${YELLOW}Exiting...${NC}"
        exit 0
        ;;

    *)
        echo -e "${RED}Invalid choice!${NC}"
        exit 1
        ;;
esac

# Post-installation instructions
echo
echo -e "${CYAN}╔══════════════════════════════════════════╗${NC}"
echo -e "${CYAN}║        ✅ SETUP COMPLETE! ✅               ║${NC}"
echo -e "${CYAN}╚══════════════════════════════════════════╝${NC}"
echo
echo -e "${YELLOW}Next steps:${NC}"
echo -e "  1. ${GREEN}Restart your terminal${NC} or source configs"
echo -e "  2. Type ${GREEN}t${NC} to start tmux"
echo -e "  3. Type ${GREEN}nvim${NC} to start Neovim"
echo
echo -e "${BLUE}Quick Commands:${NC}"
echo -e "  ${GREEN}t${NC}     - Start/attach tmux"
echo -e "  ${GREEN}tn${NC}    - New tmux session"
echo -e "  ${GREEN}tm${NC}    - Tmux session manager"
echo -e "  ${GREEN}nvim${NC}  - Start Neovim"
echo
echo -e "${YELLOW}For help, see:${NC} ${BLUE}$SCRIPT_DIR/README.md${NC}"

# WSL specific message
if [ "$OS" = "WSL" ]; then
    echo
    echo -e "${YELLOW}WSL Note:${NC} If Alt keys don't work in tmux,"
    echo -e "disable 'Use Alt as menu key' in Windows Terminal settings"
fi