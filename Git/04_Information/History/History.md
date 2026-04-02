# ow Git tracks the timeline of your History

---

## 1. Linear vs. Non-Linear History

In the world of Git,
"History" isn't just a list;
it’s a Directed Acyclic Graph (DAG).

### Linear History

This is a straight line.
Every commit has exactly one parent.

- The Workflow:
  You stay on main,
  you add a feature,
  you commit.
  You add another,
  you commit.

- The Look: A -> B -> C -> D

- Pros: Very simple to read.

- Cons:
  Hard to collaborate.
  If your MERN friend is working on the frontend
  while you work on the backend,
  you'll eventually drift apart.

### Non-Linear History

This happens when you use Branches.
The timeline "splits" and "merges."

- The Workflow:
  You create a feature-prisma branch.
  Your friend creates a feature-ui branch.
  You both commit separately.

- The Look:

  ```text
  B --- C (feature-prisma)
  /
  A -------- D (main)
  \       /
  E --- F (feature-ui)
  ```

- Pros:
  Allows simultaneous work without stepping on each other's toes.

- Cons:
  Can become a "spaghetti" mess
  if you don't use tools like `git rebase` to keep things clean.

---

## 2. What is HEAD?

It is a pointer that tells Git
which commit you are currently standing on
in your working directory.

- Usually, HEAD points to a Branch Name (like main).

- The Branch Name then points to the Latest Commit.

### The Chain of Command: HEAD -> main -> Commit #20

When you run git checkout feature-branch,
you are simply moving the HEAD pointer to a different branch.

---

## 3. The "Detached HEAD" (The Ghost State)

You saw this briefly when we talked about Submodules.
A `Detached HEAD` sounds like a horror movie,
but it just means HEAD is pointing directly to a Commit ID instead of a Branch.

### How you get there

If you run `git checkout commit-hash`
instead of `git checkout branch-name`.

### The Danger

Since you aren't on a branch,
any new commits you make are "homeless."
If you switch back to main,
those new commits become invisible
and will eventually be deleted by Git's "Garbage Collector."

### The Fix

If you find yourself in a `Detached HEAD`
and realize you've written some brilliant code:

- Don't panic.

- Run: `git checkout -b fix-my-ghost-commits`

- Now the HEAD is attached to a real branch again,
  and your work is saved.
