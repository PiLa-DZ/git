# ======================================
# 1. Copy the commit ID a1b2c3d
git log --oneline
# 2. Switch to the destination:
git checkout main
# 3. Pick the cherry:
git cherry-pick a1b2c3d
# ======================================
