# Git LFS --> (Large File Storage)

you've probably noticed that Git is amazing at tracking text changes
(like your Node.js controllers or Prisma schemas),
but it starts to "choke" when you add `large files`.

If you commit a 500MB database dump
or a high-resolution video asset to a normal Git repo,

every time a new developer clones the project,
they have to download that entire 500MB
even if they only need the latest 1KB of code.

Git `LFS (Large File Storage)` solves this
by replacing the massive file with a tiny `pointer` file.

---

## 1. The Mental Model: "The Warehouse"

Instead of storing the giant file inside your .git folder,
Git LFS stores it in a separate "Warehouse"
(usually on GitHub or GitLab servers).

- In your Repo:
  You see a tiny text file (the pointer) that says:
  "The real file is 'Asset_01', go get it from the warehouse."

- On your Disk:
  When you git checkout,
  LFS automatically goes to the warehouse,
  grabs the real file,
  and swaps it in so you can use it.

---

## 2. Why use it for your Student App?

you want your git fetch and git pull commands to be lightning-fast.
You might use LFS for:

1. Database Dumps: A .sql or .db file containing thousands of test students.

1. PDFs/Documentation: Heavy design assets or manuals.

1. Media: If your app allows students to upload profile videos for testing.

---

## 3. Installation (The Arch Way)

Since you're on Arch,
you need to install the extension first:

```bash
sudo pacman -S git-lfs
git lfs install
# NOTE: (The install command only needs to be run once per user account.)
```

---

## 4. How to Use It (Step-by-Step)

### Step A: Tell LFS which files to track

Let's say you have a large SQLite database for testing your courses.

```bash
git lfs track "*.db"
```

What happened?
Git created (or updated) a file called `.gitattributes`.
Open it in Neovim,
and you'll see a line like `*.db filter=lfs diff=lfs merge=lfs -text`.

### Step B: Add and Commit normally

```bash
git add .gitattributes
git add students_test_data.db
git commit -m "feat: add large test database using LFS"
git push origin main
```

### Step C: The Result

When you run `git push`, you will see a different progress bar:
`Uploading LFS objects: 100% (1/1), 50 MB | 5.0 MB/s`
Your code goes to GitHub;
your database goes to the LFS Warehouse.

---

## 5. Cloning an LFS Project

If your friend clones your repo,
they don't need to do anything special
if they have `git-lfs` installed.
Git will see the pointer and automatically pull the large files.

If they forget,
or if the files don't appear,
they run:

```bash
git lfs pull
```

---

## Summary

| Command                 | Action                                          |
| ----------------------- | ----------------------------------------------- |
| `git lfs install`       | Sets up LFS on your Arch machine.               |
| `git lfs track "*.ext"` | Tells Git to treat these files as "Large."      |
| `git lfs ls-files`      | Shows which files are currently managed by LFS. |
| `git lfs status`        | Shows the state of your large objects.          |

---

## ⚠️ The "Professor" Warning: Storage Limits

> [!WARNING]
> Storage Limits

GitHub and most providers give you 1GB of LFS storage for free.
If you track too many giant files,
you’ll hit that limit quickly.
Always check `git lfs ls-files`
to make sure you aren't tracking something by accident
(like a `node_modules` folder—which should always be in .gitignore anyway!).
