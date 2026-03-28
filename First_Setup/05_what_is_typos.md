# What is typos

typo (short for typographical error)
is a small mistake made during the typing process

---

## 1. Types of Typos in your Workflow

### A. Code Typos (The "Bug" Maker)

This is when you misspell a variable, function, or keyword
in your Node.js or Prisma code.

- Example:
  Writing

  ```js
  const studnets = await prisma.student.findMany();
  ```

  Instead of

  ```js
  const studnets = await prisma.students.findMany();
  ```

- Result: A ReferenceError or a broken database query.

### B. Git Command Typos

Mistyping a command in your terminal.

- Example:
  Typing

  ```bash
    git statsu
  ```

  Instead of

  ```bash
  git status
  ```

- Result:
  The terminal returns

  ```bash
  git: 'statsu' is not a git command. See 'git --help'
  ```

- Pro Tip:
  Git is usually smart enough
  to suggest the correct command: "Did you mean this? status"

### C. Commit Message Typos

Misspelling words in your project history.

- Example:
  (double word)

  ```bash
    git commit -m "fix: login login"
  ```

  or

  ```bash
    git commit -m "feat: add usre authentication".
  ```

- Result:
  Your git log looks unprofessional,
  but the code still works.
  (You can fix these with git commit --amend).

---

## 2. Why Typos are Dangerous for Backend Devs

Since you are working with Prisma and MariaDB,
a typo in a schema file can be destructive:

- A typo in a table name (User vs Users)
  can cause migration failures.

- A typo in an environment variable name
  in your .env file
  can prevent your server from connecting to the database entirely.

---

## 3. How to Catch Typos (The "Arch/Neovim" Way)

Since you use a Personal Development Environment (PDE),
you can automate the hunt for typos:

- LSP (Language Server Protocol):
  In Neovim,
  your TypeScript/Node.js LSP will highlight misspelled variables
  in red before you even save the file.

- Spell Check in Neovim:
  You can enable basic spell checking for comments and Markdown files
  by running :set spell inside Neovim.

- Git Aliases:
  If you find yourself consistently mistyping a command,
  create an alias in your .gitconfig
  so the "wrong" way also works:

  ```bash
  git config --global alias.statsu status
  ```

---

## Summary

| Context       | Example Typo     | Best Prevention                   |
| ------------- | ---------------- | --------------------------------- |
| Variable Name | const uesr = ... | ESLint / TypeScript LSP           |
| Git Command   | git puhs         | Shell Auto-suggestions (zsh/fish) |
| Prisma Schema | model Studnt {}  | Prisma VS Code/Neovim Extension   |
| Markdown/Wiki | Collaborationn   | Neovim :set spell                 |
