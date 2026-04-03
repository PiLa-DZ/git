git reset --soft
# Kept (Nothing is deleted).
# Stays in the Staging Area.
# Amending a commit message or grouping 3 small commits into 1.

git reset --mixed
# Kept (Nothing is deleted).
# Moves to the Working Directory.
# Default mode. "Un-staging" files so you can edit them more.

git reset --hard
# DELETED (Gone forever*).
# Nowhere. It is wiped out.
# Danger! Use this to completely trash a failed experiment.

# NOTE: if you --hard reset by mistake,
# git reflog is your only way to find those deleted commits!

# ======================================================
# git reset `The Undo`
# ------------------------------------------------------
## Soft
## Moves the pointer back
## but keeps your changes in the Staging Area.
## Great for fixing a typo in a commit message.
git reset --soft ID
git reset --soft HEAD~1
# ------------------------------------------------------
## Hard
## Destroys everything after that commit.
## Use this with caution on Arch
## it wipes your uncommitted code!
git reset --hard ID
git reset --hard HEAD~1
