## Merging Basics
git checkout main     # 1. Switch to the destination:
git merge Branch_Name # 2. Pull in the changes:

# Type of merge
# FF vs Non-FF
# Fast-Forward Merge (FF)
# Non-Fast-Forward Merge (No-FF)
git merge feature-name           # Git chooses the best strategy (usually FF if possible).
git merge --no-ff feature-name   # Always creates a merge commit (Preserves history).
git merge --ff-only feature-name # Only merges if it's a Fast-Forward; fails otherwise.

## Comparing the Strategies
# | Feature         | Fast-Forward (FF)                 | Non-FF (Merge Commit)                       |
# | --------------- | --------------------------------- | ------------------------------------------- |
# | New Commit?     | No.                               | Yes (A merge commit is created).            |
# | History Style   | Linear (a straight line).         | Recursive (shows branches/bubbles).         |
# | When it happens | When main hasn't moved.           | When branches diverge (or forced).          |
# | Traceability    | Harder to see feature boundaries. | Easy to see exactly where a feature joined. |
