# Intro and Git Commands

---

## 1. The Three Trees of Git

Every Git project is divided into three "areas" or "trees."

### A. The Working Directory

This is simply the folder on your hard drive
where you are currently editing files.

- State:
  Files here are either Untracked
  (Git doesn't know them yet)
  or Modified (Git sees you changed them).

- Action: You write your Node.js code here.

### B. The Staging Area (The Index)

Think of this as a "Loading Dock."
It is a technical "preview"
of what your next commit will look like.

- Why? It allows you to group related changes.
  If you fixed a bug in auth.js
  and a typo in README.md,
  you can stage them together as one logical "fix."

- Command: `git add <filename>`

### C. The Repository (Commit History)

This is where Git stores the snapshots permanently.
Once a change is here,
it’s safely tucked away in the .git directory with its own unique ID (Hash).

- Command: `git commit -m "Your message"`
