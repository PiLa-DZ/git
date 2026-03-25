# Viewing Commit History

---

## 1. The Basic Log (git log)

By default,
running git log in your terminal shows
a detailed list of commits in reverse chronological order (newest first).

### Each entry contains

- Commit Hash:
  A unique 40-character SHA-1 ID (e.g., 5a3b2c...).
  You use this to "point" to this specific moment in time.

- Author:
  The name and email you set in your git config.

- Date:
  When the commit was created.

- Message:
  The description you wrote after the -m flag.

---

## 2. Pro-Tips for "Cleaner" History

The default log can be a bit overwhelming once you have 50+ commits.
Most professional developers use these flags to make the history scannable:

### A. The "One-Line" View

Perfect for a quick overview of what has been done recently.

```bash
git log --oneline
```

Output: 5a3b2c1 feat: add express router

### B. The "Graph" View

Essential once you start using Branches.
It shows how different lines of development connect and merge.

```bash
git log --oneline --graph --all
```

### C. Limiting the Output

- By Count: `git log -n 5` (Shows only the last 5 commits).

- By Author: `git log --author="ArchUser"`.

- By File: `git log -- server.js` (Shows only changes made to that specific file).

---

## 3. Seeing the Actual Changes (git show)

git log tells you that something changed.
git show tells you what changed.

If you want to see the specific lines of code added or removed in a commit, use:

```bash
git show commit-hash
```

> [!TIP]
> (Tip: You only need the first 7 characters of the hash!)
