# ======================================================
# Git Log
# Commit Hash: ID
# Author: name and email
# Date: When the commit was created.
# Message: message
# ------------------------------------------------------
git log
git log -- file_name # See the history of just one specific file (e.g., package.json).

# INFO: Big Picture (Visualizing History)
git log --graph   # Draws the ASCII lines showing where branches split and merge.
git log --oneline # Squeezes each commit into one line (Hash + Message).
git log --all     # Shows history for all branches, not just the one you are currently on.
git log --graph --oneline --all

# INFO: Deep Dive (What actually changed?)
git log -p      # Shows the actual "diff" (the lines added/removed) for each commit.
git log --patch # Shows the actual "diff" (the lines added/removed) for each commit.
git log --stat  # Shows which files changed and how many lines were inserted/deleted. Great for a quick overview.
git log -2      # Limits the output to the last 2 commits so you don't get a wall of text.
git log -p -2 prisma/schema.prisma

# INFO: Detective Flags (Finding the Needle)
git log -S "string"           # It searches the content of the files
git log --author="Nabil"      # Filters commits by a specific person. Perfect for seeing what your friend
git log --since="yesterday"   # Filters by time.
git log --since="2 weeks ago" # Filters by time.

# Customizing the Look (--pretty)
git log --pretty=format:"%h - %an, %ar : %s"
# %h: Abbreviated hash
# %an: Author name
# %ar: Author date (relative, e.g., "2 days ago")
# %s: Subject (Commit message)

# INFO: Master Alias (.bashrc or .zshrc)
alias mygitlog="git log --graph --pretty=format:'%C(yellow)%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --all"
git log --graph --pretty=format:'%C(yellow)%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --all

# If you just want to see which files were modified in the log without searching for text, you would use
git log --name-only
git log --name-status
