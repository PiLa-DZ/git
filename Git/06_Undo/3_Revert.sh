# git revert does not delete anything.
# Instead,
# it creates a brand new commit that does the exact opposite of a previous commit.

# 1. The Basic Command
# If you just realized your last commit broke the Node.js API,
# you can undo it immediately:
git revert HEAD

# 2. Reverting a Specific Commit from the Past
git revert a1b2c3d

# 3. Reverting Without an Automatic Commit
# Sometimes you want to revert a change
# but not commit it yet
# (maybe you want to tweak the code before finalizing the "undo").
git revert -n commit_hash
# or
git revert --no-commit commit_hash

# Exit revert Mode
git revert --abort
