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
