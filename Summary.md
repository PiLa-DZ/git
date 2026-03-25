# Summary

```bash
project/.git # Git Database

# ======================================================
# Global, Local, System, Config Setting
# ------------------------------------------------------
## Global --global
git config --global user.name "Your Name"
~/.gitconfig # Your user account (all your repos).
# ------------------------------------------------------
## Local --local
git config --local user.name "Your Name"
project/.git/config # Only the current folder (repo).
# ------------------------------------------------------
## System --system
git config --system user.name "Your Name"
/etc/gitconfig      # Every user on the entire OS.
# ------------------------------------------------------

git init


git config --list
git config --global core.editor "nvim"
git config --global init.defaultBranch main

# ======================================================
# The Three Trees of Git
# ------------------------------------------------------
## A. The Working Directory
git status
# ------------------------------------------------------
## B. The Staging Area (The Index)
git add filename
# ------------------------------------------------------
## C. The Repository (Commit History)
git commit -m "Your message"


# ======================================================
# Gitignore
touch .gitignore
echo "node_modules/" >> .gitignore
echo ".env" >> .gitignore
git rm --cached filename # if you ingnore file already committed it

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
git log -n 5 # By Count: (Shows only the last 5 commits).
git log --author="ArchUser" # By Author:
git log -- server.js # By File: (Shows only changes made to that specific file).
git log -p # Seeing the "patch" (the code diff) for every commit.
git log --stat # Seeing which files were changed and how many lines were added/deleted.

# ======================================================
# Branching
# ------------------------------------------------------
## List All Branches
git branch
git branch -v # List branches with last commit.
## Create new branch
git branch Branch_Name
## Checking Out Branch
git checkout Branch_Name
git switch   Branch_Name
## Renaming a Branch
git branch -m old_name new_name
# ------------------------------------------------------
## Deleting a Branch
### Safe Delete: (Git will warn you if the code isn't merged yet).
git branch -d feature-login
### Force Delete: (Use this to kill an experiment you don't want to keep).
git branch -D feature-login
# ------------------------------------------------------
## 3. Merging Basics (git merge)
### 1. Switch to the destination:
git checkout main
### 2. Pull in the changes:
git merge Branch_Name
```
