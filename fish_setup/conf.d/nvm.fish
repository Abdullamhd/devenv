# NVM configuration for Fish Shell
# This ensures NVM-installed Node.js is available

# Check if NVM is installed and add to PATH
if test -d "$HOME/.nvm"
    # Add current NVM node version to PATH if it exists
    if test -d "$HOME/.nvm/versions/node/v18.20.3/bin"
        set -gx PATH "$HOME/.nvm/versions/node/v18.20.3/bin" $PATH
    end

    # Set NVM_DIR for compatibility
    set -gx NVM_DIR "$HOME/.nvm"
end