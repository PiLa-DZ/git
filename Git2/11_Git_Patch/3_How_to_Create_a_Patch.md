# How to Create a Patch (git format-patch)

This is the modern way to create patches.
It creates a .patch file for each commit.

### Example: Create a patch for your last commit

```bash
git format-patch -1 HEAD
```

- Result:
  A file named something like
  `0001-feat-api-add-student.patch`
  will appear in your folder.

- Content:
  If you cat this file in your terminal,
  you'll see it looks like a formatted email with the diff at the bottom.

### Example: Create patches for all commits on your branch that aren't on main

```bash
git format-patch main..your-branch-name
```
