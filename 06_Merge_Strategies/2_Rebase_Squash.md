# Rebase_Squash

---

## 1. Git Rebase (Moving the Base)

Think of a branch as a series of commits branching off from main.
If main moves forward while you are working,
your "base" is now outdated.

- What it does:
  It takes all the commits you made on your feature branch,
  sets them aside,
  moves your branch's starting point to the very tip of the current main,
  and then "re-plays" your commits one by one on top.

- The Result:
  A perfectly straight line of history.
  It looks like you started your feature after the latest changes on main,
  even if you actually started a week ago.

### When to Rebase

- To keep your feature branch up-to-date with main
  without creating messy "Merge branch 'main' into feature" commits.

- The Golden Rule:
  Never rebase branches that have already been pushed to a public server
  (like the shared main branch).
  It rewrites history and will break things for your teammates!

---

## 2. Git Squash (Condensing History)

Sometimes during development,
you make "messy" commits like
"fixed typo," "added console log," or "really fixing typo."
You don't want these cluttering the permanent history of the project.

- What it does:
  It takes a series of commits and "squashes" them into a single,
  clean commit.

- The Result:
  Instead of 10 tiny commits for a "Login" feature,
  you have one solid commit titled: feat: implement user authentication.

---

## 3. The "Squash and Merge" Workflow

This is the standard on GitHub.
When you finish a Pull Request,
you click "Squash and Merge."

- Your 20 experimental commits stay in your branch history.

- Only one clean commit is added to the main branch.

---

## 4. Rebase vs. Merge

| Feature      | Git Merge                                | Git Rebase                                |
| ------------ | ---------------------------------------- | ----------------------------------------- |
| History      | Preserves exact chronological order.     | Rewrites history to be linear.            |
| Commit IDs   | Keeps original commit hashes.            | Creates new hashes for the moved commits. |
| Traceability | "Shows ""bubbles"" where work happened." | Looks like a single continuous line.      |
| Complexity   | Simple and safe.                         | Powerful but can be dangerous if misused. |
