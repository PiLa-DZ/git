# Cherry Picking Commits

---

## 1. How it works (The Analogy)

- The Identity:
  When you cherry-pick,
  Git creates a brand new commit on your current branch.

- The Content:
  It has the exact same code changes
  and the same message as the original,
  but it gets a new Commit Hash because it now has a new "parent."

---

## 2. Step-by-Step: The Terminal Way

To cherry-pick on your Arch machine:

```bash
# 1. Find the Hash:
# Go to the branch where the commit lives and find its ID.
git log --oneline
# Let's say the hash is a1b2c3d

# 2. Switch to the destination:
# Move to the branch where you want the fix.
git checkout main

# 3. Pick the cherry:
git cherry-pick a1b2c3d
```

---

## 3. The Pro Way: Lazygit

In Lazygit, this is incredibly fast and visual:

1. Go to the Commits panel (4).

2. Find the commit you want to copy
   (you can switch branches in the Branches panel first to find it).

3. Press C (capital C) to "copy" the commit.

4. Switch back to the branch where you want it (e.g., main).

5. Press V (capital V) to "paste" (cherry-pick) it.
