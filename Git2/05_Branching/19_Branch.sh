git branch    # List All Branches
git branch -v # List branches with last commit.

git branch Branch_Name # Create new branch

git checkout Branch_Name # Checking Out Branch

git branch -m old_name new_name # Renaming a Branch

git branch -d feature-login # Safe Delete: (Git will warn you if the code isn't merged yet).
git branch -D feature-login # Force Delete: (Use this to kill an experiment you don't want to keep).

git branch -a   # To see All Hidden Branch
git branch -r   # Lists only the branches living on the remote (GitHub).
git fetch --all # Updates your local "library" with any new branches created on GitHub since you cloned.
