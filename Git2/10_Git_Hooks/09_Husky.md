# Implementation Pro-Tip: Husky

---

## 1. What is Husky?

Husky is a modern Git hooks manager for Node.js projects.

It "wires up" your Git hooks to scripts in your package.json.

- The Goal: Shared automation for the whole team.

- The Mechanism:
  It creates a small set of files in a .husky/ directory
  that Git is told to look at instead of the default .git/hooks.

---

## 2. Setting Up Husky (Step-by-Step)

Since you already have a package.json
for your student app, let's initialize it.

### Step 1: Install & Initialize

Run this in your terminal:

```bash
npx husky-init && npm install
```

### What this does

1. Installs the husky package.

2. Creates a .husky/ folder in your project.

3. Adds a "prepare" script to your package.json.

4. Creates a sample pre-commit hook that runs npm test.

---

## Step 2: The "Prepare" Script

Check your package.json. You will see:

```json
"scripts": {
  "prepare": "husky install"
}
```

This is a "lifecycle" script.
When your friend runs npm install for the first time,
this script runs automatically
and sets up Husky on their machine.

---

## 3. Migrating Your Manual Hooks to Husky

Now, let's take the logic you wrote manually and put it into Husky.

### A. The pre-commit (Linting)

By default,
Husky created .husky/pre-commit.
Open it in Neovim:

```bash
nvim .husky/pre-commit
```

Change the content to:

```bash
#!/bin/sh
. "$(dirname "$0")/_/husky.sh"

echo "🔍 Husky: Running Linter..."
npm run lint
```

### B. The commit-msg (Conventional Commits)

To add a new hook with Husky,
use the add command:

```bash
npx husky add .husky/commit-msg 'npx --no-install commitlint --edit "$1"'
# NOTE:
# This usually requires a tool called commitlint.
# For now,
# you can just paste your Bash logic
# from earlier into the .husky/commit-msg file manually!
```

### C. The pre-push (Tests)

```bash
npx husky add .husky/pre-push "npm test"
```

---

## 4. Why Husky is the "Professor" Choice

- Consistency:
  You and your friend are now forced to pass the same tests.

- Native Integration:
  It works perfectly with npm and yarn.

- Clean Repo:
  You can delete your manual scripts
  in .git/hooks now, as Husky takes over.
