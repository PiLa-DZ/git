# Origin is an alias for [url]
git remote -v                           # Listing remotes
git remote add [name] [url]             # Adding remotes
git remote remove [name]                # Deleting remotes
git remote rename [old-name] [new-name] # Renaming remotes
git remote set-url [name] [url]         # switch from HTTPS to SSH or edit url

# BUG: Risk: Because it merges automatically
git pull # Fetch + Merge

# TODO: Fetch without Merge (The "Safe" Way)
git fetch origin    # Downloads all the new commits from GitHub but does not touch your working files.
git log origin/main # to see their changes before you decide to merge them manually.
git merge

## Upstream Branch
git push -u origin main                  # The "First Push" Shortcut
git branch --set-upstream-to=origin/main # The Manual Link
git branch -vv                           # How to Check Your Links
