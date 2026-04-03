# This Project for testing we will find a bug in commit 12

We build simple app and do 20 commit
in commit 12 we will write something wrong
and keep going until commit 20
and in commit 20 we will add simple test that figure out the bug

Since creating 20 commits manually is a lot of typing,
we will use a `Bash script` to `automate` the creation of the "History,"
and then we will perform the "Surgery" (the bisect) together.

---

## 🗺️ The "Operation: Bug Hunter" Plan

### Phase 1: The Lab Setup (Commits 1–11)

We will create a simple Node.js script called `math.js`
that has a divide function.
For the first 11 commits,
the code will be perfect.

### Phase 2: The "Infection" (Commit 12)

In this commit,
we will intentionally break the logic
(changing a / to a \* or making it return null instead of a number).

### Phase 3: The "Fog of War" (Commits 13–20)

We will keep adding "fake" features
(adding comments, changing variable names, adding a multiply function)
so the bug stays hidden in the history.

### Phase 4: The Discovery (Commit 20)

We will write a simple test script.
When we run it,
it will fail.
This is where we realize: "Wait, when did this break?"

### Phase 5: The Hunt (Git Bisect)

We will use the manual `git bisect` commands
to narrow down the 20 commits
until we find the exact moment Commit 12 poisoned the well.

---

## 🛠️ Step 1: Create the "Infected" History

Run these commands in your Arch terminal.
I have combined them into a loop to save you time.

```bash
# 1. Create a new directory and init git
mkdir bisect_test && cd bisect_test
git init

# 2. Commits 1 to 11: Perfect code
for i in {1..11}; do
  echo "export const divide = (a, b) => a / b; // Version $i" > math.js
  git add math.js
  git commit -m "feat: update math utility version $i"
done

# 3. Commit 12: THE BUG (The Infection)
echo "export const divide = (a, b) => a + b; // OOPS! Addition instead of division" > math.js
git add math.js
git commit -m "feat: optimize division logic"

# 4. Commits 13 to 19: More "progress" to hide the bug
for i in {13..19}; do
  echo "export const divide = (a, b) => a + b; // Version $i
export const multiply = (a, b) => a * b;" > math.js
  git add math.js
  git commit -m "feat: add auxiliary functions version $i"
done

# 5. Commit 20: Add the Test
echo "import { divide } from './math.js';
if (divide(10, 2) !== 5) {
  console.log('❌ TEST FAILED');
  process.exit(1);
} else {
  console.log('✅ TEST PASSED');
  process.exit(0);
}" > test.js

# We need to export the function in math.js for the test to work
echo "export const divide = (a, b) => a + b;
export const multiply = (a, b) => a * b;" > math.js

git add .
git commit -m "test: add unit test for division"
```

---

## 🧪 Step 2: Confirm the Bug

Now, run your test:

```bash
node test.js
```

Result: You should see `❌ TEST FAILED`.

You know the code is broken now (Commit 20),
and you are pretty sure it worked at the very beginning (Commit 1).

---

## 🔍 Step 3: The Hunt (Your Turn!)

Now, I want you to start the `bisect` process in your terminal.
Here are your first commands:

1. `git bisect start`
   - Run `git bisect reset` to exit bisect mode

2. `git bisect bad` (Because the current commit is broken)

3. Find the first commit hash:
   Run `git log --oneline`
   and find the very bottom commit (the first one you made).

4. `git bisect good first_commit_hash`

5. Once you do that,
   Git will "teleport" you to a commit in the middle.
   When you land on a commit where `test.js` is missing,
   run: `git checkout master -- test.js`
   Run `node test.js` again.
   - If it fails, tell Git it's "bad". `git bisect bad`
   - If it passes, tell Git it's "good". `git bisect good`
   - Run `git bisect reset` to exit bisect mode
   - If it's not "Good" or "Bad" it's just broken run `git bisect skip`
