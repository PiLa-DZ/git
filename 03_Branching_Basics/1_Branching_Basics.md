# Branching: Parallel Universes for Your Code

In Git,
Branching is the "superpower"
that allows you to work on a new feature
without breaking the version
of your app that currently works (the main branch).

---

## 1. Creating and Moving Between Branches

### Creating a Branch (git branch)

To create a new branch called feature-login:

```bash
git branch feature-login
```

This creates the branch,
but you are still sitting on your current branch.

### Checking Out a Branch (git checkout or git switch)

To move into that new "universe" so you can start coding:

```bash
git checkout feature-login
# OR the modern command:
git switch feature-login
```

> [!TIP]
> Pro-Tip: You can create and switch in one single command:
> git checkout -b feature-login

---

## 2. Managing Branches (Rename & Delete)

### Renaming a Branch

If you made a typo or want to follow a new naming convention:

```bash

git branch -m new_name # Rename current branch:
git branch -m old_name new_name # Rename a different branch:
```

### Deleting a Branch

Once a feature is finished and merged,
you should delete the branch to keep your Arch terminal clean.

```bash

# Safe Delete: (Git will warn you if the code isn't merged yet).
git branch -d feature-login

# Force Delete: (Use this to kill an experiment you don't want to keep).
git branch -D feature-login

```

---

## 3. Merging Basics (git merge)

Merging is the process of taking the history from one branch
and integrating it into another.
Usually, you want to merge your feature branch back into main.

### The Workflow

1. Switch to the destination:

```bash
git checkout main
```

1. Pull in the changes:

```bash
git merge feature-login
```

### Two Types of Merges

1. Fast-Forward:
   If main hasn't changed since you branched off,
   Git just moves the pointer forward.
   It's clean and instant.

2. Three-Way Merge:
   If main received other updates while you were working,
   Git creates a new "Merge Commit"
   to tie the two histories together.
