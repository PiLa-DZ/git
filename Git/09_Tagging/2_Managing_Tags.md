# 2. Managing Tags

### Creating Tags

You can tag your current HEAD,
or reach back into your logGraph to tag an old commit.

- Current: `git tag v1.1.0`
- Backdating: `git tag -a v1.0.5 9fceb02 -m "Fixed Prisma connection bug"`

### Listing & Searching

If your project grows and you have 50 tags,
you can filter them:

- List all: `git tag`
- Search for **_v1.x_**: `git tag -l "v1.*"`

### Deleting Tags

If you made a typo in the version number:

- Local Delete: `git tag -d v1.0.0`
- Remote Delete: `git push origin --delete v1.0.0`
