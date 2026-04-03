# What is HEAD?

It is a pointer that tells Git
which commit you are currently standing on
in your working directory.

- Usually, HEAD points to a Branch Name (like main).

- The Branch Name then points to the Latest Commit.

### The Chain of Command: HEAD -> main -> Commit #20

When you run git checkout feature-branch,
you are simply moving the HEAD pointer to a different branch.
