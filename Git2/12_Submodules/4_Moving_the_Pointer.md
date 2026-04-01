# Phase 4: The "Update" (Moving the Pointer)

Imagine your frontend friend has updated the shared-types repository on GitHub.

They added a new `interface Course {}` that you need for your Node.js backend.

Even though you run git pull in your main students_courses_app,
the submodule folder will not change.

Why? Because your main project is still "pointing" to the old Commit ID.
You have to manually move that pointer to the new version.

---

## 1. The bad Way (The "Inner" Pull)

Since a submodule is just another Git repository,
you can go inside it and treat it like one.

```bash
cd modules/types
git fetch
git merge origin/main
```

Now,
the files inside modules/types are updated.
But wait! If you cd .. back to your main project
and run `git status`,
you will see something interesting:

```text
modified:   modules/types (new commits)
```

> [!WARNING]
> The Logic:
> Git noticed that the folder is now sitting on a newer commit
> than what the main project recorded.
> You have now "moved the pointer" locally.

---

## 2. The "Pro" Way (The "Outer" Update)

Instead of cd-ing into every folder,
you can tell Git to go into all submodules and update them
to the latest version on the remote branch.

```bash
git submodule update --remote --merge
# --remote: Look at the remote repository (GitHub), not just your local history.
# --merge: Merge the new changes into your local submodule branch.
```

---

## 3. Recording the Change (Committing the Pointer)

This is the step most people forget.
Just because the files are updated on your Arch machine
doesn't mean they are updated for the project.
You must commit the new pointer.

```bash
git add modules/types
git commit -m "chore: update shared-types to latest version"
git push
```

Now,
when your friend pulls the main project,
their Git will see the new "Pointer"
and know they need to update their local modules/types folder too.

---

## 4. What if your friend sees "Modified: Submodule"?

If your friend pulls your change,
they might see modified:
modules/types in their git status.
This usually means their files are still on the old commit,
but their Git knows they should be on the new one you just pushed.

They just need to run:

```bash
git submodule update
```

This "snaps" their local files to the exact commit ID you pointed to.
