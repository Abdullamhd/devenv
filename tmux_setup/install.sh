#!/bin/bash

# ╔══════════════════════════════════════════╗
# ║     TMUX FANCY SETUP INSTALLER            ║
# ║     For Fish Shell & Nvchad               ║
# ╚══════════════════════════════════════════╝

set -e  # Exit on error

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

# Get the directory where the script is located
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo -e "${CYAN}╔══════════════════════════════════════════╗${NC}"
echo -e "${CYAN}║     🚀 TMUX FANCY SETUP INSTALLER 🚀      ║${NC}"
echo -e "${CYAN}║        Optimized for Fish & Nvchad        ║${NC}"
echo -e "${CYAN}╚══════════════════════════════════════════╝${NC}"
echo

# Check if running from correct directory
if [ ! -f "$SCRIPT_DIR/tmux.conf" ]; then
    echo -e "${RED}Error: Missing required files. Please run from tmux_setup directory${NC}"
    exit 1
fi

# Step 1: Check and install dependencies
echo -e "${YELLOW}[1/7] Checking dependencies...${NC}"

# Check tmux
if ! command -v tmux &> /dev/null; then
    echo -e "${BLUE}  Installing tmux...${NC}"
    sudo apt update
    sudo apt install -y tmux
else
    echo -e "${GREEN}  ✓ tmux is installed ($(tmux -V))${NC}"
fi

# Check fzf
if ! command -v fzf &> /dev/null; then
    echo -e "${BLUE}  Installing fzf...${NC}"
    sudo apt install -y fzf
else
    echo -e "${GREEN}  ✓ fzf is installed${NC}"
fi

# Check fish
if ! command -v fish &> /dev/null; then
    echo -e "${RED}  ✗ fish is not installed${NC}"
    echo -e "${YELLOW}  Please install fish shell first${NC}"
    exit 1
else
    echo -e "${GREEN}  ✓ fish is installed ($(fish --version))${NC}"
fi

# Step 2: Create directories
echo -e "${YELLOW}[2/7] Creating directories...${NC}"
mkdir -p ~/bin
mkdir -p ~/.config/fish/functions
echo -e "${GREEN}  ✓ Directories created${NC}"

# Step 3: Install tmux configuration
echo -e "${YELLOW}[3/7] Installing tmux configuration...${NC}"
if [ -f ~/.tmux.conf ]; then
    echo -e "${BLUE}  Backing up existing .tmux.conf to .tmux.conf.bak${NC}"
    cp ~/.tmux.conf ~/.tmux.conf.bak
fi
cp "$SCRIPT_DIR/tmux.conf" ~/.tmux.conf
echo -e "${GREEN}  ✓ Tmux configuration installed${NC}"

# Step 4: Install tm session manager
echo -e "${YELLOW}[4/7] Installing tm session manager...${NC}"
cp "$SCRIPT_DIR/scripts/tm" ~/bin/tm
chmod +x ~/bin/tm
echo -e "${GREEN}  ✓ tm script installed${NC}"

# Step 5: Install fish functions
echo -e "${YELLOW}[5/7] Installing fish shell functions...${NC}"

# Copy individual fish functions
for func in t tn tk tl ts; do
    cat > ~/.config/fish/functions/${func}.fish << 'EOF'
# Auto-generated tmux function - see ~/devenv/tmux_setup/fish/tmux.fish for source
EOF
    # Extract the specific function from tmux.fish
    sed -n "/^function ${func}/,/^end$/p" "$SCRIPT_DIR/fish/tmux.fish" >> ~/.config/fish/functions/${func}.fish
    echo -e "${GREEN}  ✓ Function ${func} installed${NC}"
done

# Also install the additional functions (tka, tr)
for func in tka tr; do
    cat > ~/.config/fish/functions/${func}.fish << 'EOF'
# Auto-generated tmux function - see ~/devenv/tmux_setup/fish/tmux.fish for source
EOF
    sed -n "/^function ${func}/,/^end$/p" "$SCRIPT_DIR/fish/tmux.fish" >> ~/.config/fish/functions/${func}.fish
    echo -e "${GREEN}  ✓ Function ${func} installed${NC}"
done

# Step 6: Update PATH in fish config if needed
echo -e "${YELLOW}[6/7] Checking PATH configuration...${NC}"
if ! grep -q '\$HOME/bin' ~/.config/fish/config.fish 2>/dev/null; then
    echo "" >> ~/.config/fish/config.fish
    echo "# Add user bin to PATH for tmux tools" >> ~/.config/fish/config.fish
    echo 'if test -d "$HOME/bin"' >> ~/.config/fish/config.fish
    echo '    set -gx PATH "$HOME/bin" $PATH' >> ~/.config/fish/config.fish
    echo 'end' >> ~/.config/fish/config.fish
    echo -e "${GREEN}  ✓ Added ~/bin to PATH${NC}"
else
    echo -e "${GREEN}  ✓ PATH already configured${NC}"
fi

# Step 7: Create quick reference
echo -e "${YELLOW}[7/7] Creating quick reference...${NC}"
cat > ~/tmux_cheatsheet.md << 'EOF'
# TMUX FANCY SETUP - QUICK REFERENCE

## Session Management (Alt + key, no prefix!)
- `Alt+n` → New session
- `Alt+k` → Kill current session
- `Alt+s` → Switch sessions (fzf)
- `Alt+d` → Detach from session
- `Alt+r` → Rename session

## Window Management
- `Alt+c` → New window
- `Alt+q` → Kill window
- `Alt+w` → Switch windows (fzf)
- `Alt+,` → Rename window
- `Alt+1-9` → Direct window switch
- `Alt+←/→` → Previous/Next window

## Pane Management
- `Alt+Enter` → Split horizontal
- `Alt+\` → Split vertical
- `Alt+x` → Kill pane
- `Alt+h/j/k/l` → Navigate panes (vim-style)
- `Alt+H/J/K/L` → Resize panes
- `Alt+z` → Zoom/unzoom pane

## Fish Shell Commands
- `t` → Attach or create session
- `tn [name]` → New named session
- `tk` → Kill session (interactive)
- `tl` → List all sessions
- `ts` → Switch sessions (fzf)
- `tka` → Kill ALL sessions
- `tr [name]` → Rename current session
- `tm` → Session manager (interactive)

## Copy Mode
- `Alt+v` → Enter copy mode
- `v` → Start selection (in copy mode)
- `y` → Copy selection
- Mouse selection also works!

## Other
- `Alt+R` → Reload config
- `Alt+?` → Show all keybindings
- `Alt+(` → Previous session
- `Alt+)` → Next session

Remember: Most commands work with just Alt+Key, no prefix needed!
EOF
echo -e "${GREEN}  ✓ Cheatsheet created at ~/tmux_cheatsheet.md${NC}"

# Final message
echo
echo -e "${GREEN}╔══════════════════════════════════════════╗${NC}"
echo -e "${GREEN}║        ✅ INSTALLATION COMPLETE! ✅        ║${NC}"
echo -e "${GREEN}╚══════════════════════════════════════════╝${NC}"
echo
echo -e "${CYAN}Quick Start:${NC}"
echo -e "  1. ${YELLOW}Open a new terminal${NC} or ${YELLOW}source your fish config${NC}"
echo -e "  2. Type ${GREEN}t${NC} to start using tmux"
echo -e "  3. View cheatsheet: ${GREEN}cat ~/tmux_cheatsheet.md${NC}"
echo
echo -e "${CYAN}Key Commands to Remember:${NC}"
echo -e "  ${GREEN}t${NC}        → Start tmux"
echo -e "  ${GREEN}tm${NC}       → Interactive session manager"
echo -e "  ${GREEN}Alt+n${NC}    → New session (no prefix!)"
echo -e "  ${GREEN}Alt+s${NC}    → Switch sessions"
echo -e "  ${GREEN}Alt+1-9${NC}  → Switch windows instantly"
echo
echo -e "${YELLOW}Tip: All keybindings use Alt key - no prefix needed!${NC}"