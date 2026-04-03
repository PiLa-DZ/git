# git-filter-repo

---

## ⚠️ The "Collaboration" Warning

> [!WARNING]
> If you force push to main,
> your MERN friend's local repository will be "broken."
> They will see errors like diverged branches.

- The Protocol:
  - Tell your friend: "Don't touch the repo for 10 minutes."
  - Rewrite your history and Force Push.
  - Tell your friend: "Delete your local main and re-fetch from the server."

---

## git-filter-repo (The Modern Standard)

### Install in arch Linux

```bash
sudo pacman -S git-filter-repo
```

### Common "Filter" Types

1. Removing a Secret File:
   If you accidentally committed `config/secrets.json`:

   ```bash
   git filter-repo --path config/secrets.json --invert-paths
   ```

1. Extracting a Subfolder:
   If you want to turn your `backend/` folder into its own standalone repository:

   ```bash
   git filter-repo --subdirectory-filter backend/
   ```

---

## 2. Preserving Original Data

When you run a filter,
Git essentially creates a parallel universe.

- The New:
  A clean history where the "bad" file never existed.

- The Old:
  The original commits still exist in your .git folder
  as "unreachable" objects until Git performs "Garbage Collection."

> [!TIP]
> The "Professor" Tip:
> Before running any filter command,
> make a backup of your entire project folder.
> There is no undo button for a repo-wide rewrite.

---

## 3. Rewriting Specific Branches

By default,
filter-repo rewrites the entire history of all branches.
If you only want to fix a specific feature branch:

```bash
git filter-repo --refs refs/heads/feature-auth --path private_key.pem --invert-paths
# This ensures your main branch stays untouched
# while you clean up the mess in the feature branch.
```

---

## 4. `git push --force` (The Final Trigger)

Once you have rewritten your local history,
your local machine and GitHub are in a "disagreement."
GitHub has the old history; you have the new one.

GitHub will reject a normal git push
because the histories don't match.
To fix this, you must "Force" it.

### The "Safe" Way: --force-with-lease

If you use `git push --force`,
you might overwrite your friend's recent commits
if they pushed while you were filtering.

- Always use: `git push --force-with-lease`

- Why?
  It checks if anyone else has pushed to the server since you last pulled.
  If they have,
  it stops the push so you don't delete their work.
