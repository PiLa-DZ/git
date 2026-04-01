# Phase 2: The "Creation" (Adding a Submodule)

It's time to actually link a "small box" into your "big box."

Since you are building a student management app,
let's pretend your friend made a repository
for shared TypeScript interfaces that you both need.

In this phase,
we will add that external repository as a submodule.

---

## 1. The Command: `git submodule add`

To add a submodule,
you use the git submodule
add command followed by the URL of the repository you want to include.

Run this in your project root:

```bash
git submodule add https://github.com/yourfriend/shared-types.git modules/types
```

- The URL: Where the code lives on GitHub.

- The Path (modules/types):
  This tells Git: "Create a folder here and put the submodule inside it."
  If you don't provide a path, Git will just use the name of the repository.

---

## 2. What Just Happened? (The "Magic" Files)

After running that command,
your Arch terminal will show two major changes in your students_courses_app:

### A. The .gitmodules File

Git created a new file in your root directory.
Open it in Neovim to see its contents:

```TOML
[submodule "modules/types"]
    path = modules/types
    url = https://github.com/yourfriend/shared-types.git
```

This is the Map.
It tells anyone who clones your repo where to go to find the "small box."

### B. The "Special" Folder

If you run `ls -la modules/types`,
you will see the files from your friend's repo.
BUT,
if you run `git status`,
Git won't show those 10 new files. Instead, it will show:

```text
new file:   .gitmodules
new file:   modules/types
```

Git treats modules/types as a single Commit ID, not a folder of files.

---

## 3. Committing the Submodule

Adding a submodule is like adding a file;
you have to commit the `Pointer` so your friend sees it on GitHub.

```bash
git add .
git commit -m "feat: add shared-types as a submodule"
git push
```

---

## 4. The "Professor" Warning: The Submodule's .git

Inside a normal repo, you have a .git folder.
Inside a submodule (like modules/types), you will see a .git file.

- Why?
  - Git 2.11+ keeps the submodule's
    actual history inside your main project's `.git/modules` folder
    to keep things organized.
  - The .git file inside the submodule
    is just a "pointer" telling Git where the real data is.

---

## Phase 2 Summary for your Wiki

- Use git submodule `add [URL] [Path]` to link a project.

- The `.gitmodules` file tracks the URL and Location.

- The main repository only tracks the `Commit SHA` of the submodule.

- You must commit and push the new .gitmodules
  and the folder pointer for others to see it.
