# Most developers think you can only have one branch open
# at a time in a folder. worktree proves them wrong.

# ===========================================================
# What is a Worktree? (The Concept)
# Normally, when you want to switch from your feature-api branch
# to main to fix a quick bug, you have to:
# 1. Stash your current uncommitted changes.
# 2. Checkout main.
# 3. Fix the bug and commit.
# 4. Checkout feature-api again.
# 5. Pop your stash.
# With Worktree,
# you instead create a second physical folder on your hard drive
# that is linked to the same .git database.
# You can have feature-api open in one terminal window
# and main open in another—at the same time.

# ===========================================================
# *** How to use Worktree (The Commands) ***
# Imagine you are working in ~/projects/students_app.
# You need to check something on the main branch
# without closing your current work.
# ------------------------------------------------------
# 1. Create the new worktree:
git worktree add ../students_app_main main
# This creates a new folder called students_app_main one level up.
# It checks out the main branch into that folder.
# ------------------------------------------------------
# 2. Go to that folder:
cd ../students_app_main
# Now you can run your server,
# edit code in Neovim,
# and commit—all while your original work remains untouched in the other folder.
# ------------------------------------------------------
# 3. Clean up when done:
git worktree remove ../students_app_main
