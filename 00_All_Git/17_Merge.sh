## Merging Basics
git checkout main     # 1. Switch to the destination:
git merge Branch_Name # 2. Pull in the changes:

# FF vs Non-FF
# Fast-Forward Merge (FF)
# Non-Fast-Forward Merge (No-FF)
git merge feature-name           # Git chooses the best strategy (usually FF if possible).
git merge --no-ff feature-name   # Always creates a merge commit (Preserves history).
git merge --ff-only feature-name # Only merges if it's a Fast-Forward; fails otherwise.
