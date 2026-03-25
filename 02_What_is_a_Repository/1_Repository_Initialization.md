# Repository Initialization

- git init
- git config
- Local vs Global Config

---

## 1. Local vs. Global Config

Git allows you to set settings at different "levels."
This is perfect for developers who use one laptop
for both work and personal projects.

| Level  | Command Flag | Scope                               | Storage Location (Arch/Linux) |
| ------ | ------------ | ----------------------------------- | ----------------------------- |
| System | --system     | Every user on the entire OS.        | /etc/gitconfig                |
| Global | --global     | Your user account (all your repos). | ~/.gitconfig                  |
| Local  | --local      | Only the current folder (repo).     | .git/config                   |

---

## 2. Setting Your Identity (Global)

You usually set your name and email once globally.
This info is used by GitHub/GitLab
to link your commits to your profile.

```bash
git config --global user.name "Your Name"
git config --global user.email "your.email@example.com"
```

---

## 3. When to use Local Config?

Imagine you have a personal GitHub account
(<cool-dev@gmail.com>)
but you are working on a professional project for a company
(<dev.name@company.dz>).
You don't want your work email on your personal projects!

1. Navigate to your work project folder.

1. Run:

   ```bash
   git config --local user.email "dev.name@company.dz"
   ```

1. Result:
   This specific repo will use your work email,
   but all your other projects will still use your personal one.

---

## 4. Useful Helper Commands

| Command                                     | What it does                                             |
| ------------------------------------------- | -------------------------------------------------------- |
| git config --list                           | Shows every setting currently active.                    |
| git config --global core.editor "nvim"      | Sets your default text editor (perfect for Arch users!). |
| git config --global init.defaultBranch main | Ensures all new repos start with main instead of master. |
