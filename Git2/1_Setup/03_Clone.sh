# Download Remote Repo
git clone [url] [path(Optional)]

# Download one branch
git clone --single-branch --branch [branch_name] [url] [path(Optional)]

# ====================================================
# *** Shallow Clone ***
git clone [url] --depth 1 [path(Optional)]
# Only give me the most recent snapshot of the code.
# Ignore all previous commits,
# deleted files,
# and old history
# --------------------------------------------
# ** un-shallow **
git fetch --unshallow
