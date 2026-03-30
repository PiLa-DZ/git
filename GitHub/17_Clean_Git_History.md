# Best Practices: Clean Git History

- Rule --> One commit = One logical change.
- Squash and Merge Strategy
- Interactive Rebasing (git rebase -i)
- Avoid "Merge Commits" Locally (Merge Bubble)
  - The Clean Way: `git fetch origin && git rebase origin/main`

| Practice   | Instead of...         | Use...                               |
| ---------- | --------------------- | ------------------------------------ |
| Merging    | git merge main        | git rebase main                      |
| Committing | "WIP" or "Save"       | "Conventional Commits (feat:, fix:)" |
| Cleanup    | Pushing messy history | git rebase -i (Interactive)          |
| Finalizing | Standard Merge        | Squash and Merge                     |
