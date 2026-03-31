# How to "Share" a Stash (The Workaround)
# If you really need to move a stash to another computer
# (or show it to your friend),
# the best way is to turn that stash into a temporary branch:
# This creates a new branch and puts your stash onto it
git stash branch new_branch_name stash@{0}
# Now you can push this branch to GitHub
git push origin new_branch_name
