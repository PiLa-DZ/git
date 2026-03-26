# ======================================================
# Global Config (--global)
git config --global user.name "Your Name"
# Your user account (all your repos).
~/.gitconfig

# ======================================================
# Local Config (--local)
git config --local user.name "Your Name"
# Only the current folder (repo).
project/.git/config

# ======================================================
# System Config (--system)
sudo git config --system user.name "Your Name"
# Every user on the entire OS.
/etc/gitconfig

# ======================================================
git config --list
git config --global --list # List all Global config
git config --global --edit # Open in Editor

git config --global user.name "Nabil"
git config --global user.email "Nabil@gmail.com"
git config --global core.editor "nvim" # Default Editor
git config --global init.defaultBranch main
git config --global core.autucrlf input # In Linux
git config --global diff.tool nvim      # Default diff.tool
