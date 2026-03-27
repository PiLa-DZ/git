nvim ~/.gitconfig        # Global Config (--global) # Your user account (all your repos).
nvim project/.git/config # Local Config (--local) # Only the current folder (repo).
nvim /etc/gitconfig      # System Config (--system) # Every user on the entire OS.

# Navigate Config ==============================================
git config --list
git config --global --list # List all Global config
git config --global --edit # Open in Editor

# User Info ====================================================
git config --global user.name "Nabil"
git config --global user.email "Nabil@gmail.com"

# Basic Settings ===============================================
git config --global core.editor "nvim"      # Default Editor
git config --global init.defaultBranch main # Default Branch
git config --global core.autucrlf input     # In Linux
git config --global diff.tool nvim          # Default diff.tool

# Pull Config ==================================================
git config --global pull.rebase false # merge
git config --global pull.rebase true  # rebase
git config --global pull.ff only      # fast-forward only
