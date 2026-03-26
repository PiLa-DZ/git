# Git Remotes

---

## 1. What is origin

A Remote is simply a nickname (alias) for a URL.
Instead of typing <https://github.com/user/repo.git> every time,
you just type origin.

---

## 2. Managing Your Remote Links

```bash
git remote -v # Listing remotes
git remote add [name] [url] # Adding remotes
git remote remove [name] # Deleting remotes
git remote rename [old-name] [new-name] # Renaming remotes
git remote set-url [name] [url] # switch from HTTPS to SSH or edit url
```

---

## 3. Pushing and Pulling: The Data Flow

```bash
git push origin main # Sends your local commits to the remote.

# Pulling --> It brings your local code up to date with the server.
git pull # is actually two commands in a trench coat: Fetch + Merge.
# BUG:
# Risk: Because it merges automatically,
# it can cause Merge Conflicts immediately.

# TODO:
# Fetch without Merge (The "Safe" Way)
git fetch origin #  Downloads all the new commits from GitHub but does not touch your working files.
git log origin/main # to see their changes before you decide to merge them manually.
```

---

## Upstream Branch

```bash
git push -u origin main # The "First Push" Shortcut
git branch --set-upstream-to=origin/main # The Manual Link
git branch -vv # How to Check Your Links

```
