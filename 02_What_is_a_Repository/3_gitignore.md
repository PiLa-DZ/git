# .gitignore

---

## 1. Why do we need a .gitignore?

If you don't use one,
your repository will quickly become bloated with "garbage" files.
In a Node.js environment, the big offenders are:

- node_modules/:
  This folder contains thousands of dependencies.
  You don't commit it because anyone can recreate it by running npm install.

- .env files:
  These hold your database passwords and API keys.
  Committing this is a major security risk.

- Build Folders:
  Folders like dist/ or build/ are generated from your source code.

- System Files:
  Arch-specific or OS-specific junk like .DS_Store (Mac) or Thumbs.db (Windows).

---

## 2. How to create and use it

you can simply use touch to create the file in the root of your repository:

```bash
touch .gitignore
```

Then,
open it in your editor (like nvim .gitignore)
and list the patterns you want to ignore.
Git uses Glob Patterns (wildcards) to match files.

Example Node.js .gitignore:

```txt
# Dependency directory
node_modules/

# Environment variables (Secrets!)
.env
*.local

# Logs
npm-debug.log*
logs/

# Build output
dist/
```

---

## 3. Useful Glob Patterns

| Pattern            | Meaning                                          | Example                 |
| ------------------ | ------------------------------------------------ | ----------------------- |
| `filename.txt`     | Ignore one specific file.                        | secret.txt              |
| `folder/`          | Ignore an entire directory and everything in it. | node_modules/           |
| `*.log`            | Ignore any file ending in .log.                  | "error.log, access.log" |
| `!important.log`   | The Negation—ignore all logs except this one.    | important.log           |
| `temp/**/test.txt` | Ignore test.txt in any subdirectory of temp.     | temp/old/test.txt       |

---

## 4. "I committed it by mistake!" (The Fix)

A common headache:
You add a file to .gitignore after you already committed it.
Git will keep tracking it because it's already in the "memory."
To stop tracking it without deleting it from your hard drive,
run:

```bash
git rm --cached filename
```

This removes it from Git's index but keeps the physical file on your Arch disk.
