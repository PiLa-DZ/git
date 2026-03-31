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
