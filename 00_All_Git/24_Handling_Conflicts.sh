# =======================================
# *** Conflict Markers ***
# =======================================
# <<<<<<< HEAD
# --> Current branch
# =======
# --> Pulling branch
# >>>>>>> feature-api
# =======================================

# ---------------------------------------
# 1. labeled Conflicted files
git status
# ---------------------------------------
# 2. Open file
nvim file_name
# ---------------------------------------
# 3. Make a choice -------------------------
# --> Delete markers
# --> (keep One)
# --> (keep both)
# --> edit the code to exactly how it should look
# ---------------------------------------
# 4. Stage the fix
git add file_name
# ---------------------------------------
# 5. Finish the job
git commit            # If merging
git rebase --continue # If rebasing
