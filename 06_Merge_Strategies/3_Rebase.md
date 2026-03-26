# Rebase

- Standard Rebase
- Interactive Rebase

> [!WARNING]
> Only rebase your own private feature branches.

---

## 1. The Standard Rebase (Syncing with Main)

Imagine you started a feature branch two days ago.
Since then, your teammates have pushed 5 new commits to main.
Your feature branch is now "outdated."

### The Goal

Move your entire feature branch
so it starts from the newest commit on main.

### Step-by-Step

```bash
# 1. Update your local main:
git checkout main
git pull origin main

# 2. Switch to your feature branch:
git checkout feature-branch

# 3. Perform the Rebase:
git rebase main
```

### What happens next?

Git will take each of your commits
and try to apply them to the new main.

- If there are no conflicts:
  Git finishes, and your history is now a straight line.

- If there are conflicts:
  Git pauses. You fix the conflict in your editor, then run:

```bash
git add <fixed-file>
git rebase --continue
```

---

## 2. Interactive Rebase (Cleaning History)

This is how you Squash commits.
Use this when you have 5 messy commits (like "typo," "fix," "test")
and want to turn them into 1 clean commit before sharing your code.

### The Goal

Rewrite the last 3 commits of your current branch.

#### Step-by-Step

#### 1. Start the interactive session

```bash
git rebase -i HEAD~3
# INFO: HEAD~3 means "look at the last 3 commits"
```

#### 2. The Editor Opens

Your default editor (likely Neovim on Arch)
will open a list of your commits that looks like this:

```bash
pick a1b2c3d feat: add login logic
pick e5f6g7h fix: small typo
pick i9j0k1l debug: remove console logs
```

#### 3. Change the Commands

Change the word pick to squash (or just s)
for the commits you want to merge into the one above them:

```bash
pick a1b2c3d feat: add login logic
squash e5f6g7h fix: small typo
squash i9j0k1l debug: remove console logs
```

#### 4. Save and Exit

Save the file (:wq in Vim).
Git will then open a second window asking you to write a new,
combined commit message.

---

## 3. The "Golden Rule" of Rebasing

Never rebase a branch that you have already pushed
to a shared repository (like a public main branch).

Because rebasing creates new commit hashes,
if you push a rebased main,
your teammates' local histories will no longer match the server,
causing a "Git Nightmare" for everyone.
Only rebase your own private feature branches.
