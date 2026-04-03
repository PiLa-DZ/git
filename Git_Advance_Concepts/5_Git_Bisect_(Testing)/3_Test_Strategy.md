# Test Strategy

---

## 1. The "Cherry-Pick" Strategy

If you have a test that can prove the bug exists,
you can "borrow" that test from the future
and bring it into the past while you are bisecting.

### The Workflow

1. Start your `bisect`.

2. When you land on a commit where test.js is missing, run:

```bash
git checkout master -- test.js
# NOTE: This brings the test file from the master branch
# into your current temporary bisect state without committing it.)
```

1. Now run `node test.js`.

2. Tell `Git good` or `bad`.

3. Crucial:
   Before moving to the next bisect step,
   you might need to clean up that file so it doesn't conflict.

---

## 2. The "Temporary Script" Strategy

Instead of a file in Git,
you can just write a quick "One-Liner" in your terminal.

Instead of node test.js, just run:

```bash
node -e "const {divide} = require('./math.js'); if(divide(10,2) !== 5) process.exit(1)"
```

- If this command exits with an error (1), you type `git bisect bad`.
- If it finishes silently (0), you type `git bisect good`.

---

## 3. The "Automated Hunt" (The Best Way)

In a real project,
the bug is usually a regression of an existing feature.
This means there is likely already a test file in the repo
(like `tests/auth.test.ts`).

If the test file exists in both the "Good" and "Bad" versions,
you can let Git do all the work:

```bash
git bisect start HEAD good_commit_hash
git bisect run npm test
```

Git will checkout a commit,
run `npm test`,
see if it passes or fails,
and move to the next one automatically.
You can go grab a coffee,
and when you come back,
the terminal will have the "First Bad Commit" waiting for you.

---

## 4. What if the code doesn't even compile?

Sometimes, during a bisect,
you land on a commit that is so broken
it won't even start (maybe your friend forgot a semicolon).
This isn't "Good" or "Bad" it's just broken.

In this case, you use:

```bash
git bisect skip
```

Git will pick a nearby commit instead and try to continue the search.
