# Reflog

- git reflog shows you the history of your actions
  It records when you:
  - Commit code.
  - Switch branches (checkout).
  - Pull or Push.
  - Rebase (This is the big one!).
  - Reset or Delete a branch.

---

## 1. The Core Options

### `git reflog show` (The Default)

This is what you get when you just type `git reflog`.
It shows a list of where HEAD has been.

- Output: HEAD@{0}, HEAD@{1}, etc.
- Usage: Find the hash of a commit you "lost" after a bad merge or reset.

### `git reflog expire` (Housekeeping)

Git doesn't keep these records forever.
By default, it keeps them for 90 days.

- Usage: `git reflog expire --expire=30.days --all`
  (Prunes old entries to save space, though rarely needed on modern systems).

### `git reflog delete` (Security)

If you accidentally checked out a branch
or committed something with a sensitive name
that shows up in your `reflog`,
you can `delete` a specific entry.

- Usage: `git reflog delete HEAD@{2}`

---

## 2. Time-Based Power Options

One of the coolest features of `reflog`
is that it understands time.
You can ask Git: "Where was my code 1 hour ago?"

- `git checkout HEAD@{1.hour.ago}`

- `git diff main@{yesterday} main`

---

## 3. The Best Aliases for Reflog

```bash
# --- Git Reflog Aliases ---

# A beautiful, detailed reflog
alias refGraph="git reflog --pretty=format:'%C(yellow)%h%Creset %C(magenta)%gd%Creset %C(cyan)%cr%Creset %gs'"

# Find where you were before the last major action (Reset/Merge)
alias refBack="git reflog -n 10"

# See the reflog for a specific branch only
# Usage: refBranch feature-ui
refBranch() {
  git reflog show "$1"
}
```
