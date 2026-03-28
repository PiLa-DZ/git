# Commit Messages

---

## 1. The Anatomy of a Perfect Commit

A great commit message isn't just a single line;
it’s a structured record.

```txt
type(scope): subject

[Optional body]

[Optional footer]
```

- Type:
  What kind of change is this?
  - feat
  - fix
  - docs
  - style
  - refactor
  - test
  - chore

- Scope:
  What part of the app?
  - prisma
  - auth
  - api

- Subject:
  A concise description (under 50 characters).
  Use the imperative mood
  ("Add feature" not "Added feature").

---

## 2. Common "Types" for Backend Devs

Using these types
makes your git log --oneline look incredibly organized:

| Type     | When to use it?                                          | Example                                               |
| -------- | -------------------------------------------------------- | ----------------------------------------------------- |
| feat     | A new feature for the user.                              | feat(api): add student enrollment endpoint            |
| fix      | A bug fix.                                               | fix(prisma): resolve unique constraint error on email |
| refactor | Code change that neither fixes a bug nor adds a feature. | refactor(auth): simplify JWT verification logic       |
| chore    | "Updating build tasks, package manager configs, etc."    | chore(deps): update express to v5.0.0                 |
| docs     | Documentation only changes.                              | docs(readme): add installation steps for Arch Linux   |

---

## 3. The "Seven Rules" of a Great Message

1. Separate subject from body with a blank line.

2. Limit the subject line to 50 characters.

3. Capitalize the subject line.

4. Do not end the subject line with a period.

5. Use the imperative mood in the subject line (e.g., "Fix bug", "Refactor service").

6. Wrap the body at 72 characters.

7. Use the body to explain what and why vs. how. (The code shows the how).

---

## 4. Why this matters for your Arch Workflow

Since you use tools like Lazygit and fzf,
structured messages allow you to filter your history instantly.

### The Power of the Imperative Mood

Think of a commit as an instruction to the codebase.

- "If applied, this commit will Add student validation."

- "If applied, this commit will Fix database timeout."

---

## 5. Pro Tip: Commit Templates

You can tell Git to open your Neovim buffer
with a pre-filled template to remind you of these rules.

1. Create a file at ~/.gitmessage:

```txt
type(scope): subject

# Why is this change necessary?
# How does it address the issue?
# What side effects does this change have?
```

1. Tell Git to use it:

```bash
git config --global commit.template ~/.gitmessage
```

---

## Summary

| Feature   | Best Practice                                          |
| --------- | ------------------------------------------------------ |
| Length    | "Subject < 50 chars, Body < 72 chars per line."        |
| Mood      | "Imperative (e.g., Update, Remove, Refactor)."         |
| Clarity   | Use Closes #ID in the footer to link to GitHub Issues. |
| Frequency | Atomic commits (one logical change per commit).        |
