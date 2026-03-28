# Forking vs Cloning

---

## 1. The Core Difference

The simplest way to remember it is:
Cloning is a Git action (moving code to your computer),
while Forking is a GitHub action
(copying a project to your own account).

### What is a Fork?

A fork is a server-side copy of someone else's repository.

- Imagine you want to contribute to a famous Node.js library.
  You don't have permission to push code to their repository.

- You click the "Fork" button on GitHub.

- GitHub creates an exact copy of that project
  under your username (github.com/Nabil/cool-library).

- You now have full "Owner" permissions over this copy.

### What is a Clone?

A clone is a local copy.

- You take a URL (from your own repo or a fork)
  and run git clone in your terminal.

- This moves the code from GitHub's servers
  onto your Arch Linux SSD so you can open it in Neovim.

---

## 2. The Collaboration Workflow

When you are working with others,
you usually combine these two steps.

Here is the standard "Open Source" or "Team" workflow:

1. Fork: You fork the main project to your account on GitHub.

2. Clone: You clone your fork to your Arch machine.

   ```bash
   git clone git@github.com:Nabil/project-fork.git
   ```

3. Upstream:
   You link your local folder back to the original project
   (the "Upstream") so you can stay updated.

   ```bash
   git remote add upstream git@github.com:Original-Owner/project.git
   ```

4. Push: You push your changes to your fork.

5. Pull Request (PR):
   You go to GitHub and ask the original owner
   to "Pull" your changes from your fork into their project.

---

## 3. Comparison Table for your Wiki

| Feature          | Forking                                      | Cloning                                        |
| ---------------- | -------------------------------------------- | ---------------------------------------------- |
| Where it happens | On GitHub's Servers.                         | On your local machine (Arch).                  |
| Permissions      | "You get full ""Owner"" rights to the copy." | You only get rights if you own the source.     |
| Connection       | Linked to the original repo via GitHub.      | Linked to a remote URL via Git.                |
| Typical Use      | Contributing to projects you don't own.      | Starting work on a project you have access to. |

---

## 4. When to use which?

- Use git clone directly when you are working on your own projects
  (like your students_courses_app)
  or when you are a "Member" of a GitHub Organization.
  You have permission to push,
  so you don't need a fork.

- Use Fork then Clone when you want to contribute to a project
  where you are not an official team member.
  This allows you to experiment freely without breaking the main project.
