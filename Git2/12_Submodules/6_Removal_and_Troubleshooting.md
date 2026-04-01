# Phase 6: The "Danger Zone" (Removal & Troubleshooting)

Welcome to the "Danger Zone."
Because Git stores submodule information in multiple places
(the .gitmodules file, the .git/config, and the internal .git/modules directory),

you can't just `rm -rf` the folder and expect it to disappear.
If you do that,
Git will get confused and your "Professor-Nabil" PDE will start throwing errors.

Here is the clean, surgical way to remove a submodule
and how to fix the most common "terminal" headache:
`the Detached HEAD`

---

## 1. How to Safely Remove a Submodule

To completely delete a submodule
(like if you decided to merge the shared-types directly into your backend),
follow these 3 steps:

### Step A: De-register the submodule

This removes it from your .git/config so Git stops trying to manage it.

```bash
git rm -f modules/types
```

> [!NOTE]
> This command is powerful.
> It deletes the folder from your disk
> AND removes the entry from your .gitmodules file in one shot.

### Step B: Clean the internal Git cache

Even if the folder is gone,
Git still remembers the submodule
in its "internal attic" (.git/modules). To be 100% clean:

```bash
rm -rf .git/modules/modules/types
```

### Step C: Commit the cleanup

```bash
git commit -m "chore: remove shared-types submodule"
```

---

## 2. Troubleshooting: The "Detached HEAD"

This is the #1 problem you will face.
You cd into your submodule and your terminal prompt
(if you use a cool Zsh/Fish theme) says something like HEAD -> a1b2c3d.

- The Problem:
  You aren't on a branch.
  If you commit here, your changes belong to no one.

- The Fix:
  1. Check where you are: `git status`

  2. Get back to safety:
     `git checkout main` (or the name of the branch you need).

  3. Merge your work:
     If you already made a commit while detached,
     run `git merge [commit_hash]` to bring those changes onto your main branch.

---

## 3. Troubleshooting: "Modified content, untracked content"

Sometimes `git status` in your main project says:
modified: modules/types (modified content, untracked content)

- The Cause:
  You modified a file inside the submodule
  but haven't committed it inside that folder yet.

- The Fix:
  1. `cd modules/types`
  2. `git add . && git commit -m "fix: internal changes"`
  3. `cd ../..`
  4. Now your git status will change to (new commits),
     which you can then add to your main project.
