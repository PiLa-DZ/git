# pre-commit --> Runs first, before you even type a commit message

## Step 1: Locate the Hooks Directory

Open your terminal,
navigate to your students_courses_app project,
and list the hidden hooks:

```bash
cd ~/Github/students_courses_app
ls .git/hooks
```

You will see files like `pre-commit.sample`
Git only runs files that are exactly named `pre-commit`
(no extension) and are executable.

---

## Step 2: Create the Script

We will create a new file using Neovim.
This script will tell Git:
"Before you commit,
run my linter.
If the linter fails,
stop the commit."

```bash
nvim .git/hooks/pre-commit
```

Paste this basic Bash script into the file:

```bash
#!/bin/bash

echo "🔍 Running pre-commit checks..."

# Run your linter or compiler check
# Replace 'npm run lint' with whatever command you use to check your code
npx eslint .

# Store the exit code of the previous command
status=$?

if [ $status -ne 0 ]; then
    echo "❌ Linting failed! Fix the errors before committing."
    exit 1
fi

echo "✅ All checks passed. Committing now..."
exit 0
```

---

## Step 3: Make it Executable

On Linux,
a script won't run unless you give it "execute" permissions.
Use the chmod command we discussed earlier:

```bash
sudo chmod +x .git/hooks/pre-commit
```

---

## Step 4: Test it (The "Fail" Test)

To see if it works,
intentionally break something in your Node.js code
(e.g., leave an unused variable or a syntax error that your linter catches).
Then try to commit:

```bash
git add .
git commit -m "Testing my new hook"
```

What should happen:

- Git triggers the `pre-commit` script.
- `npm run lint` runs and finds the error.
- The script returns exit 1.
- Git stops the commit. You will see your error message in the terminal

---

## Step 5: The "Success" Test

Fix the error in Neovim, save the file, and try again:

```bash
git add .
git commit -m "feat: valid student schema"
```

What should happen:

- The linter passes (exit 0).
- Git proceeds and creates the commit.

---

> [!IMPORTANT]
> Important Note: The `--no-verify` Escape Hatch
> Sometimes you are in a rush
> and know the linter is complaining about something minor
> that you'll fix later.
> You can bypass your hook by adding a flag:

```bash
git commit -m "Emergency fix" --no-verify
# (Use this sparingly—don't let it become a habit!)
```
