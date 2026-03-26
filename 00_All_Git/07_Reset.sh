# ======================================================
# git reset `The Undo`
# ------------------------------------------------------
## Soft
## Moves the pointer back
## but keeps your changes in the Staging Area.
## Great for fixing a typo in a commit message.
git reset --soft ID
# ------------------------------------------------------
## Hard
## Destroys everything after that commit.
## Use this with caution on Arch
## it wipes your uncommitted code!
git reset --hard ID
