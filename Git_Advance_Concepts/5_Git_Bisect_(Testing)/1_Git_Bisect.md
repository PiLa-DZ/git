# Git Bisect

Think of Git Bisect as the "Search Engine" for bugs.

It is a powerful tool that uses a Binary Search algorithm
to find exactly which commit introduced a bug into your code.

imagine your students_courses_app was working perfectly two weeks ago.
You’ve made 50 commits since then, and suddenly,
the login API is returning a `500 Error`.
You don't know which of those 50 commits broke it.

Instead of checking all 50 one by one,
`Git Bisect` will find it in only 6 steps `($log_2(50) \approx 5.6$)`.

---

## 1. The Mental Model: "Good" vs. "Bad"

### You tell Git two things

1. The "Bad" point: Usually your current commit where the bug exists.
2. The "Good" point:
   A point in the past (maybe a tag like v1.0 or a specific hash)
   where you are 100% sure the bug did not exist.

### Git then jumps to the middle commit between them. You test the code

- If it's Good, the bug was introduced in the second half.

- If it's Bad, the bug was introduced in the first half.
  Git repeats this until it finds the "First Bad Commit."

---

## 2. The Step-by-Step Workflow

### Step A: Start the session

```bash
git bisect start
```

### Step B: Define the boundaries

```bash
git bisect bad                 # Current commit is broken
git bisect good 4a5b6c7        # That hash from 2 weeks ago was working
```

### Step C: The Testing Loop

Git will now automatically checkout a commit in the middle.
Your terminal will say something like:
`Bisecting: 25 revisions left to test after this`

Now, you test your app (run your Node.js server or npm test).

- If the bug is still there: git bisect bad
- If the bug is gone: git bisect good

Git will keep jumping to the middle of the remaining commits until it identifies the culprit.

### Step D: The Result

Once Git finds it, it will print:
``[hash] is the first bad commit

Now you can open Neovim,
look at that specific commit's changes (`git show [hash]`),
and see exactly what you broke.

### Step E: Clean up

Go back to your original branch:

```bash
git bisect reset
```

---

## 3. The "Professor-Nabil" Pro Tip: Automation

Since you have a package.json with tests,
you don't even have to manually type "good" or "bad"!
If you have a test script that exits with 0 for success and 1 for failure,
Git can do the whole thing while you drink coffee.

```bash
git bisect start HEAD [good_hash]
git bisect run npm test
```

Git will automatically checkout every commit,
run your tests,
and stop when it finds the bug.
This is ultimate PDE efficiency.

---

## 4. Summary for your Wiki

| Term            | Meaning                                         |
| --------------- | ----------------------------------------------- |
| Binary Search   | The logic Git uses to skip unnecessary commits. |
| git bisect good | "Telling Git "this version works."              |
| git bisect bad  | "Telling Git "this version is broken."          |
| git bisect run  | Automating the search with a script.            |

---

## How would this help your Student App?

If you and your frontend friend
have been pushing lots of changes to the Prisma schema and the controllers,

and suddenly a route breaks,
git bisect is much faster than reading through hundreds of lines of code.
