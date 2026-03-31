# pre-push -----> Runs just before git push sends data to GitHub

---

## 1. What is the `pre-push` Hook?

This hook runs just before
git push actually sends any data to the remote server.

- The Trigger:
  It runs after you type git push but before the transfer starts.

- The Goal:
  To prevent "broken" code from ever reaching the main repository.

- The Difference:
  While `pre-commit` is for fast things (like linting),
  `pre-push` is for slower things (like your full test suite).

---

## 2. Why use it for Tests?

As a backend developer,
you don't want to run your full database integration tests
every time you make a tiny 2-line commit (it would be too slow).

You want to run them once you are finished
with a feature and ready to share it.

If your tests fail, the push is cancelled.
This ensures
that the main branch on GitHub always stays "Green" (working).

---

## Step 3: Create the Script

We will create a script that runs your Node.js test suite.

```bash
nvim .git/hooks/pre-push
```

Paste this Bash script:

```bash
#!/bin/bash

echo "🚀 Preparing to push to GitHub..."
echo "🧪 Running full test suite. This might take a moment..."

# Run your test command (e.g., npm test)
npm test

# Capture the exit code
status=$?

if [ $status -ne 0 ]; then
    echo "--------------------------------------------------"
    echo "❌ TESTS FAILED! Push aborted."
    echo "Fix your logic before sharing code with the team."
    echo "--------------------------------------------------"
    exit 1
fi

echo "✅ All tests passed! Proceeding with push..."
exit 0
```

### In `package.json` add

For "TESTS FAILED!" Add this

```json
"scripts": {
  "test": "echo \"Error: no test specified\" && exit 1"
},
```

For "All tests passed" Add this

```json
"scripts": {
  "test": "echo \"✅ All tests passed!\" && exit 0",
},
```

---

## Step 4: Make it Executable

Again, give the file the power to run on your system:

```bash
sudo chmod +x .git/hooks/pre-push
```

---

## 5. Testing the Firewall

1. The "Broken Logic" Test:
   Change a piece of logic in your Express controller
   so that your tests fail.
   Try to git push.

- Result:
  The tests will run in your terminal, fail,
  and the push will stop.
  Your friend stays safe from your bugs!

1. The "Solid Code" Test:
   Fix the logic so `npm test` passes.
   Try to git push again.

- Result:
  The tests pass,
  and your code is successfully sent to GitHub.
