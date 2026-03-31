# ======================================================
# Git Log
# Commit Hash: ID
# Author: name and email
# Date: When the commit was created.
# Message: message
# ------------------------------------------------------
## Log all
git log

## One-Line
git log --oneline

## The "Graph" View (All Branchs)
git log --oneline --graph --all

## Limiting the Output
git log -n 5                # By Count: (Shows only the last 5 commits).
git log --author="ArchUser" # By Author:
git log -- server.js        # By File: (Shows only changes made to that specific file).

# Seeing the "patch" (the code diff) for every commit.
git log -patch
git log -p

# Seeing which files were changed and how many lines were added/deleted.
git log --stat
