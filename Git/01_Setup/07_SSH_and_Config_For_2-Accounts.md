# SSH and Config For 2 Accounts

---

## 1. Generate the Second Key

First,
create a second key specifically for your "Friend/Tester" account.
Don't overwrite your main one!

```bash
# Main account (you already have this)
# ~/.ssh/id_ed25519

# Tester account (Create this now)
ssh-keygen -t ed25519 -f ~/.ssh/id_tester
# -f ~/.ssh/id_tester:
## This names the file specifically so it doesn't clash with your main key.
```

---

## 2. The "Brain" of the Operation: `~/.ssh/config`

Now, we create a map.

- This tells SSH:
  "If I'm pushing to `github-tester`,
  use the `id_tester` key.
  Otherwise, use the `main` key."

- Open Neovim: `nvim ~/.ssh/config`
- Add this configuration:

```text
# Your Main Account (PiLa-DZ)
Host github.com
  HostName github.com
  User git
  IdentityFile ~/.ssh/id_ed25519

# Your Second Account (The Simulator)
Host github-tester
  HostName github.com
  User git
  IdentityFile ~/.ssh/id_tester
```

---

## 3. Add the Keys to GitHub

- Copy `id_ed25519.pub` to your Main GitHub account.
- Copy `id_tester.pub` to your Secondary GitHub account.

```bash
# Test the "Handshake" for BOTH

# Test 1 (Should say Hi PiLa-DZ!)
ssh -T git@github.com

# Test 2 (Should say Hi Your-Second-Username!)
ssh -T git@github-tester
```

---

## 4. How to Clone as the "Tester"

This is the trick!
When you want to act as the "Tester,"
you change the URL slightly.
Instead of `github.com`,
you use the Alias (`github-tester`) you created in the `config` file.

To clone your project as the Tester:

```bash
git clone git@github-tester:Nabil/students_courses_app.git students_tester_side
# github-tester:
## SSH sees this,
## looks at your config,
## and says: "Aha! Use the id_tester key for this folder."
```

---

## 5. Managing Different Names/Emails

Even if you use the right SSH key,
Git might still use your global name ("Nabil") for the commit.
To truly simulate two users,
you must set the `local config` inside the tester's folder.

Inside the students_tester_side folder:

```bash
git config user.name "Nabil Tester"
git config user.email "tester@example.com"
# Now,
## when you git commit,
## the history will show the "Tester" as the author,
## not you!
```

---

## 6. Summary of the Workflow

| To Act As... | Use this Remote URL     | Set Local Git Config     |
| ------------ | ----------------------- | ------------------------ |
| Main Nabil   | <git@github.com>:...    | user.name "Nabil"        |
| Tester Nabil | <git@github-tester>:... | user.name "Nabil Tester" |

---

## 🧪 How to "Simulate" the Collaboration

Now that your terminal knows how to be two different people,
here is how you test things like
Merge Conflicts or Submodules on one machine:

### Folder A (As PiLa-DZ)

```bash
git clone git@github.com:PiLa-DZ/students_courses_app.git main_dev
```

### Folder B (As the Tester)

```bash
# Notice we use the "github-tester" alias here!
git clone git@github-tester:PiLa-DZ/students_courses_app.git tester_side
```

### Crucial Step for Folder B

Inside tester_side,
you need to tell Git that for this folder only,
you are the tester:

```bash
cd tester_side
git config user.name "Nabil Tester"
git config user.email "tester@example.com"
```

### Why this is a "Professor" Level Setup

You can now open two tmux panes side-by-side:

- Left Pane: You are PiLa-DZ. You change math.js and push.

- Right Pane: You are Nabil-Tester. You try to change the same line and push.

- BOOM:
  You just created a real merge conflict on your own machine.
  Now you can practice resolving it in Neovim without breaking a real project!

---

## Why this is great for testing

You can now open two `tmux` windows:

- Window 1:
  Your main project.
  You push a "buggy" commit.

- Window 2:
  Your tester project.
  You git pull,
  find the bug with git bisect,
  and push a fix.
