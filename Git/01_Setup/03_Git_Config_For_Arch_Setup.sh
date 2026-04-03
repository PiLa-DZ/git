# 1. The "Identity" (Must-Have)
git config --global user.name "Your Name"
git config --global user.email "your.email@example.com"

# 2. The "Editor" (Neovim Integration)
# By default, Git might try to use vi or nano. Since you are a Neovim user, tell Git to use it for commit messages and tag descriptions.
git config --global core.editor "nvim"

# 3. The "Branch" Default
# Git historically used master, but the modern standard (and GitHub's default) is main. Setting this now prevents headaches later.
git config --global init.defaultBranch main

# 4. Handling "Line Endings"
# Since you are a Node.js dev, you might collaborate with people on Windows (even if you and your MERN friend are on Linux). This setting prevents annoying "LF vs CRLF" warnings.
# On Linux (Arch), keep it as input:
git config --global core.autocrlf input

# 5. The "Helper" (Credentials)
# Since we talked about HTTPS and Tokens, you need a way to stop Git from asking for your token every 5 minutes.
# To store it permanently (unencrypted) in ~/.git-credentials
git config --global credential.helper store
# OR: To keep it in memory for 1 hour (safer)
git config --global credential.helper 'cache --timeout=3600'

# 6. "Professor" Level Optimizations
# These make the terminal output much more readable on your Arch machine.

# Enable color in terminal output (usually on by default now, but good to be sure)
git config --global color.ui auto
# Show a summarized 'status' (more minimalist)
git config --global status.short true
# Automatically prune remote-tracking branches that no longer exist on the server
git config --global fetch.prune true
