# The "Detached HEAD" (The Ghost State)

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
