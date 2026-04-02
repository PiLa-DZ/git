# How to Apply a Patch (`git am`)

When your friend sends you a .patch file,
you use the `am` (Apply Mail) command.

```bash
git am 0001-feat-api-add-student.patch
```

- What happens:
  Git reads the file,
  applies the changes,
  and automatically creates a commit with the original author's name and message.
  It’s a perfect "teleportation" of a commit.
