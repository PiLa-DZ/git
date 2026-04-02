# Git Attributes

You are on collaborating with a MERN stack friend
who might be on a different OS (like Windows or macOS),

Git Attributes is your best friend for keeping the project "sane."

Think of `.gitattributes` as
a Configuration File for Git's Behavior toward specific files.

It tells Git:
"Treat this file as a binary,"
or "Always use Linux-style line endings for this file,"
or even "Hide this file's secrets when I run a diff."

---

## 1. The Line Ending War (LF vs. CRLF)

This is the #1 reason people use Git Attributes.

- Linux: Uses Line Feed (LF).

- Windows: Uses Carriage Return + Line Feed (CRLF).

If your friend is on Windows and saves a file,
Git might think every single line has changed
just because the hidden "end of line" character is different.
This ruins your git diff!

### The Solution: Create a `.gitattributes` file in your root directory

```bash
# Force all text files to use LF (Linux style) on check-in
* text=auto eol=lf
```

---

## 2. Handling Binary Files (Images, PDFs, SQLite)

Git is great at diffing text,
but it’s terrible at diffing binary files.
If you have a SQLite database
or a large image in your project,
Git might try to "merge" them and corrupt the file.

### The Solution: Tell Git these are binary

In `.gitattributes`

```bash
*.db binary
*.png binary
*.jpg binary
```

---

## 3. Syntax Highlighting and `Linguist`

Have you ever looked at a GitHub repository
and seen that little colored bar showing "90% TypeScript, 10% HTML"?
That is powered by a library called `Linguist`.

Sometimes it gets it wrong (it thinks your .ts files are something else).

You can override this in `.gitattributes`:

```bash
# Tell GitHub to treat .inc files as TypeScript
*.inc linguist-language=typescript

# Hide generated files from the language statistics
prisma/client/* linguist-vendored
```

---

## 4. Custom Diffs (The "Secret" Feature)

As a backend dev,
you might have a `secrets.json` or an `.env` file.
You can tell Git to use a "lock"
or a special way to show diffs for these.

More commonly,
if you use a tool like Prisma,
the `schema.prisma` file is text,
but you might want Git to treat it with special care during a merge.

---

## 5. How to Set It Up (Step-by-Step)

1. Create the file: `nvim .gitattributes`

2. Add your rules: (See the example below).

3. Renormalize (The "Fix Everything" Command):
   If you already have files with wrong line endings,
   run this:

```bash
git add --renormalize .
git commit -m "chore: settle the line ending war with .gitattributes"
```

---

## 🏁 Example .gitattributes for your Student App

```bash
# 1. Handle line endings automatically
* text=auto eol=lf

# 2. Ensure shell scripts always use LF (or they break on Linux!)
*.sh text eol=lf

# 3. Mark images and databases as binary
*.png binary
*.jpg binary
*.db binary

# 4. Collapse generated code in GitHub PRs (Keep it clean!)
prisma/generated/** linguist-generated=true
```

---

## Summary

| Attribute | What it does                                                           |
| --------- | ---------------------------------------------------------------------- |
| text=auto | Let Git decide if a file is text or binary.                            |
| eol=lf    | Forces Linux-style line endings (Essential for Arch!).                 |
| binary    | Prevents Git from ever trying to "merge" or "diff" the file textually. |
| linguist- | Controls how GitHub displays your code and languages.                  |

---

## Why this matters for "Professor-Nabil"

By setting this up now,
you prevent "invisible" bugs
where a script works on your Linux machine
but fails on your friend's machine
because of a hidden Windows character.
It makes your project Platform Agnostic.
