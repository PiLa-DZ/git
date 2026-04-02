# post-checkout > Runs after you switch branches

---

## 1. What is the post-checkout Hook?

This hook runs after you successfully run
`git checkout` or `git switch` to change branches.

- The Trigger:
  It fires immediately after the files
  in your working directory have been updated to match the new branch.

- The Goal:
  To sync your local dependencies (node_modules)
  or generated files (like the Prisma Client) with the code.

---

## 2. Why use it?

Prevents "Module Not Found" Errors:
You’ll never forget to install a new package your friend added.

- Keeps Prisma in Sync:
  It can run `npx prisma generate`
  so your TypeScript types always match
  the database schema of the branch you are on.

- Saves Time:
  You don't have to manually check package.json
  for changes every time you switch branches.

---

## Step 3: Create the Script

We are going to write a script that checks if
`package.json` was modified during the checkout.
If it was,
it runs npm install.

```bash
nvim .git/hooks/post-checkout
```

Paste this Bash script:

```bash
#!/bin/bash

# Git passes three arguments to post-checkout:
# $1 = Previous HEAD (where you came from)
# $2 = New HEAD (where you are now)
# $3 = Flag (1 if it was a branch checkout, 0 if it was a file checkout)

PREV_HEAD=$1
NEW_HEAD=$2
IS_BRANCH_CHECKOUT=$3

if [ "$IS_BRANCH_CHECKOUT" -eq 1 ]; then
    echo "🔄 Branch switched. Checking for dependency changes..."

    # Check if package.json has changed between the two branches
    CHANGES=$(git diff --name-only "$PREV_HEAD" "$NEW_HEAD" | grep "package.json")

    if [ -n "$CHANGES" ]; then
        echo "📦 package.json changed! Running npm install..."
        npm install
    else
        echo "✅ No dependency changes detected."
    fi
fi

exit 0
```

---

## Step 4: Make it Executable

Give it the permissions to run on your system:

```bash
sudo chmod +x .git/hooks/post-checkout
```

---

## 5. Testing the Automation

To test this,
you’ll need to simulate a branch change
with a different `package.json`.

1. Create a temporary branch: `git checkout -b test-branch`

1. Add a "dummy" dependency: `npm install is-even` (or any small package).

1. Commit it: `git add . && git commit -m "chore: add dummy pkg"`

1. Switch back to main: `git checkout main`
   - Result:
     The hook should detect that package.json is different
     on main and run `npm install` to remove the dummy package
     (or vice versa when you switch back).
