# Clean Git History

a Clean Git History is not just about aesthetics
it is about debuggability.

When your MariaDB connection fails
or a Prisma migration breaks in production,

a clean history allows you to use git bisect
to find the exact commit that introduced the bug.

A messy history of "save," "test," and "fixed typo" commits
makes your repository a nightmare to navigate.

Here is how to keep it professional.

---

## 1. Atomic Commits

The golden rule of a clean history is:
One commit = One logical change.

- Bad:
  A single commit that updates the database schema,
  fixes a CSS bug, and adds a new API route.

- Good:
  Three separate commits,
  each handling one of those tasks.

- Why?
  If the API route causes a memory leak,
  you can "revert" just that one commit
  without losing your database changes.

---

## 2. The "Squash and Merge" Strategy

When you are working on a feature branch,
you might have 10 commits like
"trying this," "fixing that," and "oops."
Your colleagues don't need to see that struggle.

- The Action:
  When your Pull Request is approved,
  use the Squash and Merge button on GitHub.

- The Result:
  It combines all 10 messy commits into one clean,
  perfect commit on the main branch.

- Benefit:
  Your main branch history stays a high-level list of features,
  not a diary of your mistakes.

---

## 3. Interactive Rebasing (git rebase -i)

Before you even push your code to GitHub,
you can clean up your local history on your Arch machine.
This is the "Power User" way to edit the past.

```bash
# View and edit the last 5 commits
git rebase -i HEAD~5
```

- This opens your Neovim buffer with a list of commits. You can:
  - pick: Keep the commit.
  - reword: Keep the commit but change the message (fix those typos!).
  - squash: Meld the commit into the one above it.
  - drop: Delete the commit entirely.

---

## 4. Avoid "Merge Commits" Locally

When your main branch moves forward
while you are working on a feature,
don't run git merge main.
This creates a "Merge bubble" that litters your history.

The Clean Way:

```bash
git fetch origin
git rebase origin/main
```

This takes your new commits and "re-stacks" them
on top of the latest version of main.
It keeps your history in a straight,
linear line.

---

## Summary

| Practice   | Instead of...         | Use...                               |
| ---------- | --------------------- | ------------------------------------ |
| Merging    | git merge main        | git rebase main                      |
| Committing | "WIP" or "Save"       | "Conventional Commits (feat:, fix:)" |
| Cleanup    | Pushing messy history | git rebase -i (Interactive)          |
| Finalizing | Standard Merge        | Squash and Merge                     |

---

## Backup from roadmap.sh

makes it easy to decipher the order of the commits in your repository
It facilitates finding commits that might have introduced bugs and enable rollback if necessary
To be able to deploy any commit on your development branch using your CI/CD system
If you are handling mobile app releases and you are responsible for figuring out what feature is in which release.
