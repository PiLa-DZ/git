# Phase 5: The "Workflow" (Editing inside a Submodule)

Welcome to Phase 5. This is the "Final Boss" of Git Submodules.

Usually, you treat a submodule as "read-only" (you just use your friend's code).

but as a Backend Engineer,
you might need to fix a bug in the shared types yourself.

The problem? By default, submodules are in a Detached HEAD state.
They are pointing to a specific commit,
not a branch.
If you make changes and commit them now,
they will be "lost in space" because they aren't attached to main.

---

## 1. Step 1: Get on a Branch

Before you touch any code inside the submodule,
you must tell it to move from a "specific commit" to a "live branch."

```bash
cd modules/types
git checkout main
```

Now you are "safe."
You are no longer in a Detached HEAD;
you are on the main branch of the shared-types repo.

---

## 2. Step 2: Make Your Changes

Open your Neovim and edit the TypeScript files inside that folder.

```bash
# Edit files in Neovim
nvim student.interface.ts
```

---

## 3. Step 3: The "Double Commit" (The Secret Sauce)

This is where people get confused.
You have to commit twice:
once for the library,
and once for your main app.

### Commit A: The Submodule (The Files)

First, you save the changes into the library's history.

```bash
cd modules/types
git add .
git commit -m "fix: update student age validation"
git push origin main
```

Now the shared-types repo on GitHub is updated.

### Commit B: The Main App (The Pointer)

Now, go back to your root folder.
Your main app noticed that the submodule moved to a new commit.

```bash
cd ../..
git status
# You will see: modified: modules/types (new commits)

git add modules/types
git commit -m "chore: sync backend with new shared types"
git push
```

Now your students_courses_app on GitHub points to the new version.

---

## 4. The "Safety" Command

If you forget to push the submodule (Commit A)
but you push the main app (Commit B),
your friend's build will break.
Why? Because your main app tells their computer:
"Go find Commit #99,"
but Commit #99 only exists on your machine because you didn't push it!

To prevent this,
use this "Professor" flag when pushing your main app:

```bash
git push --recurse-submodules=on-demand
```

This command checks:
"Did Nabil forget to push the submodule changes?"
If yes,
it pushes the submodule first, then the main app. It's a lifesaver.
