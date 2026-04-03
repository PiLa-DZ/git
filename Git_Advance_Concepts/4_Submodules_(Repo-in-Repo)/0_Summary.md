# Summary

---

## Create

```bash
# =============================================================================
# add a submodule
git submodule add https://github.com/user_name/repo_name.git modules/repo_name

# =============================================================================
# You will see
# 1. The .gitmodules File
[submodule "modules/types"]
    path = modules/types
    url = https://github.com/yourfriend/shared-types.git

# 2. The "Special" Folder
ls -la modules/types

# WARN: Now you have repo instade repo
# .git in root /
# .git in sub  /modules/repo_name
```

---

## Clone

Now when you go to another machine and try to clone the main repo again

```bash
# The Modern Solution: The "All-in-One" Clone
git clone --recursive https://github.com/nabil/students_courses_app.git
```

What if you already cloned the repo
and is staring at an empty folder?

```bash

git submodule update --init --recursive

# `--init`: Initialize any submodules that haven't been set up yet.
# `--update`: Fetch the code and move the folder to the correct commit.
# `--recursive`: If the submodule itself has submodules (rare, but possible), it handles those too.
```

---

## Update

Update it's like run `git pull` instal sub repo

```bash
# The "Pro" Way (The "Outer" Update)
# Run this instade main repo (Big Box)
git submodule update --remote --merge
# --remote: Look at the remote repository (GitHub), not just your local history.
# --merge: Merge the new changes into your local submodule branch.

```

> [!WARNING]
> You must commit the new pointer.

```bash

git add modules/types
git commit -m "chore: update shared-types to latest version"
git push
```

---

## Editing inside a Submodule

> [!WARNING]
> Before Editing any thing inside submodule
> You have to move from `Detached HEAD` to `live branch`

```bash
# move from a "specific commit" to a "live branch."
cd modules/types
git checkout main
# Now you on the main branch of the shared-types repo.
# You are no longer in a Detached HEAD;
```

Now you can Make Your Changes

```bash
nvim file_name.js
```

How to commit changes in submodule

```bash
# 1. You have to commit submodule first
cd modules/types
git add .
git commit -m "fix: update student age validation"
git push origin main
# 2. Now You have to commit main repo (Big Box)

cd ../..
git status
# You will see: modified: modules/types (new commits)

git add modules/types
git commit -m "chore: sync backend with new shared types"
git push --recurse-submodules=on-demand
```

---

## 1. How to Safely Remove a Submodule

```bash
### Step A: De-register the submodule
git rm -f modules/types
### Step B: Clean the internal Git cache
rm -rf .git/modules/modules/types
### Step C: Commit the cleanup
git commit -m "chore: remove shared-types submodule"
```
