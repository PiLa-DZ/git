# Summary
git stash save "name" # To quickly clean your working directory without committing.
git stash list        # "To see all your ""hidden"" work across all branches."
git stash pop stash@{0}      # To resume your work and delete the stash at the same time.
git stash apply stash@{0}    # To apply a stash to multiple branches (it keeps the stash).
git stash drop stash@{0}     # To permanently delete a specific stash from the list.
git stash clear       # The Nuclear Option: Deletes every stash you have ever made.

# =================================================
# *** Stash *** <-- The Concept "Save for Later"
# How it words
# When you stash,
# Git takes all your uncommitted changes
# (both staged and unstaged), wraps them up,
# and puts them on a Stack inside your .git folder.
# Your working directory is then reset to match the last commit.
# NOTE: Your stashes are NOT pushed to GitHub.

# =================================================
# *** The Core Commands ***
# -------------------------------------------------
# Stash your work:
git stash
git stash save "Stash_Name"
# NOTE: By default, git don't stash Untracked files
# So to include Untracked file run
git stash -u save "Stash_Name"
git stash -include-untracked save "Stash_Name"

# -------------------------------------------------
# See what's in your drawer:
git stash list
# Output:
# stash@{0}: On main: Backpack 1
#
# -------------------------------------------------
# Bring your work back (The "Pop"):
git stash pop
git stash pop stash@\{0\}
# BUG: This removes the latest stash
# and applies it to your current branch.
#
# -------------------------------------------------
# TODO: Bring it back but KEEP it in the stash:
git stash apply
git stash apply stash@\{0\}

# -------------------------------------------------
# Delete one Stash
git stash drop
git stash drop stash@\{1\}
# BUG: Deletes every stash you have ever made.
git stash clear
