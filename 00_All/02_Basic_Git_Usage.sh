# ======================================================
# Local Machine <--> the Remote Server
# ======================================================
git clone URL
git init # Initialization
git status
git add .
git commit -m "msg"

git fetch # (Remote → Local (Info only))
git pull  # (Remote → Local (Update))
git push  # (Local  → Remote)

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
