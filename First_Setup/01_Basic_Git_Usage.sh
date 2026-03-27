mkdir -p ~/.ssh && cd ~/.ssh && ssh-keygen # Add SSH Key

git remote -v                 # List remote Repository
git remote set-url origin URL # edit remote url

git clone URL

git init # Initialization
git status
git add .
git commit -m "msg"

git fetch # (Remote → Local (Info only))
git pull  # (Remote → Local (Update))
git push  # (Local  → Remote)

git branch                      ## List All Branches
git branch Branch_Name          ## Create new branch
git checkout Branch_Name        ## Checking Out Branch
git branch -m old_name new_name ## Renaming a Branch
git branch -d feature-login     ### Safe Delete: (Git will warn you if the code isn't merged yet).
git branch -D feature-login     ### Force Delete: (Use this to kill an experiment you don't want to keep).

git checkout main     ### 1. Switch to the destination:
git merge Branch_Name ### 2. Pull in the changes:

git reset --soft ID # Soft Reset
git reset --hard ID # Hard Reset

# New Concept ---------------------------------------------------------------
git clone --single-branch --branch [branch_name] [url] # Download one branch

git branch -a   # To see All Hidden Branch
git branch -r   # Lists only the branches living on the remote (GitHub).
git fetch --all # Updates your local "library" with any new branches created on GitHub since you cloned.
