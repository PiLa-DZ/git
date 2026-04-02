# BUG: Only do this on your own feature branches!

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
