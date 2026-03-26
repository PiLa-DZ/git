# FF_vs_Non-FF

- Fast-Forward Merge (FF)
- Non-Fast-Forward Merge (No-FF)

---

## 1. Fast-Forward Merge (FF)

This is the simplest type of merge.
It happens when the destination branch (e.g., main)
has not changed since you created your feature branch.

- How it works:
  Git doesn't actually "merge" anything.
  It just moves the main pointer forward
  to the same commit as your feature branch.

- The Result:
  A perfectly straight linear history.
  It looks like you worked directly on main the whole time.

- Pros: Very clean, no "extra" commits.

- Cons:
  You lose the visual record that a separate feature branch ever existed.

---

## 2. Non-Fast-Forward Merge (No-FF)

- This occurs in two scenarios:
  - Divergence:
    main moved forward (someone else committed)
    while you were working on your feature.

  - Forced (--no-ff):
    You tell Git to create a merge commit
    even if a Fast-Forward is possible.

- How it works:
  Git creates a new Merge Commit
  that has two "parents"
  the tip of main and the tip of your feature branch.

- The Result:
  A "diamond" or "bubble" shape in your git log --graph.

- Pros:
  Preserves the group of commits as a single "unit" of work.
  You can clearly see when a feature started and ended.

- Cons:
  Can make the history look "cluttered"
  with many "Merge branch..." commits.

---

## 3. Comparing the Strategies

| Feature         | Fast-Forward (FF)                 | Non-FF (Merge Commit)                       |
| --------------- | --------------------------------- | ------------------------------------------- |
| New Commit?     | No.                               | Yes (A merge commit is created).            |
| History Style   | Linear (a straight line).         | Recursive (shows branches/bubbles).         |
| When it happens | When main hasn't moved.           | When branches diverge (or forced).          |
| Traceability    | Harder to see feature boundaries. | Easy to see exactly where a feature joined. |

---

## 4. Which one should you use?

Most professional teams have a "Merge Policy" in their Wiki:

- The "Clean History" Fanatics:
  They prefer Fast-Forward.
  They often use git rebase (which we can cover later)
  to make sure their feature branch is always "on top" of main before merging.

- The "Context" Defenders:
  They prefer Non-FF (git merge --no-ff).
  They want to see exactly which 5 commits belonged
  to the "Login Feature"
  so they can revert the whole thing easily if it breaks.

### How to force a Non-FF merge on Arch

Even if Git could do a Fast-Forward,
you can force a merge commit by running:

```bash
git checkout main
git merge --no-ff feature-name
```

---

## Summary

```bash
git merge feature-name # Git chooses the best strategy (usually FF if possible).
git merge --no-ff feature-name # Always creates a merge commit (Preserves history).
git merge --ff-only feature-name # Only merges if it's a Fast-Forward; fails otherwise.
```

##
