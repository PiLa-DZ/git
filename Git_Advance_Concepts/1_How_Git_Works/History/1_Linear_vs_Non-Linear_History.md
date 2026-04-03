# Linear vs. Non-Linear History

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
