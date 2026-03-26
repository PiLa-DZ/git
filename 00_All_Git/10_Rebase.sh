# BUG: Only rebase your own private feature branches.
# BUG: Only do this on your own feature branches!

# =================================================
# *** The Standard Rebase (Syncing with Main) ***

git checkout main           # 1. Switch to main branch:
git pull origin main        # 2. Update your local main:
git checkout feature_branch # 3. Switch to feature branch:
git rebase main             # 4. Perform the Rebase:

# -------------------------------------------------
# If there are conflicts:
# Resolve all conflicts manually, mark them as resolved with
git add fixed_file
# Or
git rm conflicted_files
# Then run
git rebase --continue
# You can instead
git rebase --skip  # You can instead skip this commit
git rebase --abort # To abort and get back to the state before "git rebase"

# =================================================
# *** Interactive Rebase (Cleaning History) ***
git rebase -i HEAD~3 # 1. Start the interactive session
pick [Commit id, msg]
squash [Commit id, msg]

# =================================================
# More
git rebase branch_name # Moves your current branch to the tip of <branch>.
git rebase -i HEAD~n   # Opens the menu to squash/edit the last n commits.
git rebase --continue  # Resumes the rebase after you fix a conflict.
git rebase --abort     # Cancels the rebase and returns everything to normal.

# =================================================
# *** Interactive Rebase Commands ***
Pick   # Keep this commit exactly as it is
Reword # Edit only the text of the message
Edit   # "Pause" the rebase at this specific commit so you can go back to your code and add/remove lines
Squash # Combine commits & combine messages
Fixup  # Combine commits & delete the small message

# =================================================
# LazyGit
Ctrl+j/k # Swap the chronological order of commits.
