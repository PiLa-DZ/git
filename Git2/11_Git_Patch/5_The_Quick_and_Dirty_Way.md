# The "Quick & Dirty" Way (git diff > file)

Sometimes you don't want a full "commit" patch;
you just want a raw diff of your unstaged changes.

```bash
# 1. Create:

git diff > my_changes.patch

# 2. Apply (using git apply):
git apply my_changes.patch
# NOTE: `git apply` just changes the files on the disk;
# it does not create a commit.
# You have to `git add` and `git commit` manually.
```
