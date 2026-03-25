# ======================================================
# Branching

# ------------------------------------------------------
## List All Branches
git branch
git branch -v # List branches with last commit.

# ------------------------------------------------------
## Create new branch
git branch Branch_Name

# ------------------------------------------------------
## Checking Out Branch
git checkout Branch_Name
git switch Branch_Name

# ------------------------------------------------------
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
