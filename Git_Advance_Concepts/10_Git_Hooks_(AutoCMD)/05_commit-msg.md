# commit-msg --> Runs after you write your message but before the commit is finalized

---

## 1. What is the commit-msg Hook?

Unlike pre-commit (which looks at your code files),
commit-msg looks at your commit message

the commit-msg hook looks at
a temporary file created by Git
that contains the message you just typed in your editor (Neovim).

- The Trigger:
  It runs after you save and quit your commit message editor.

- The Input:
  Git passes the path to the temporary message file
  as an argument (usually .git/COMMIT_EDITMSG).

- The Goal: To enforce a standard like Conventional Commits.

---

## 2. Why Use It? (The "Conventional" Standard)

In professional Node.js projects,
we use a standard format
so that tools (and humans) can read the history easily:
`type(scope): description`

- feat: A new feature (e.g., feat(api): add student enrollment)
- fix: A bug fix (e.g., fix(prisma): repair database leak)
- docs: Documentation only changes.
- style: Changes that do not affect the meaning of the code (white-space, formatting).

---

## Step 1: Create the Script

Let's build a manual hook that rejects any message
that doesn't start with one of those professional prefixes.

```bash
nvim .git/hooks/commit-msg
```

Paste this Bash script:

```bash
#!/bin/bash

# The first argument ($1) is the path to the commit message file
MSG_FILE=$1
COMMIT_MSG=$(cat "$MSG_FILE")

# Regular expression to check for Conventional Commits format
# Expected: feat|fix|docs|style|refactor|test|chore: message
REGEX="^(feat|fix|docs|style|refactor|test|chore)(\(.+\))?: .+"

if [[ ! $COMMIT_MSG =~ $REGEX ]]; then
    echo "❌ ERROR: Invalid commit message format!"
    echo "--------------------------------------------------"
    echo "Your message: '$COMMIT_MSG'"
    echo "--------------------------------------------------"
    echo "Please use the format: 'type(scope): description'"
    echo "Example: 'feat(auth): add JWT login'"
    echo "Allowed types: feat, fix, docs, style, refactor, test, chore"
    exit 1
fi

echo "✅ Commit message format is valid."
exit 0
```

---

## Step 2: Make it Executable

Just like the last hook,
you must tell Arch Linux that this file is allowed to run:

```bash
sudo chmod +x .git/hooks/commit-msg
```

---

## Step 3: Test the "Professor" Standard

### The "Fail" Test

Try to commit with a "lazy" message:

```bash
git add .
git commit -m "fixed the thing"
```

- Result:
  Git will reject this.
  You'll see your custom error message explaining the correct format.

### The "Success" Test

Try a professional message:

```bash
git commit -m "fix(api): handle empty student list"
```

- Result: Git accepts it, and your history stays clean!
