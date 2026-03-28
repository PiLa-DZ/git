# Markdown

In the Git ecosystem,
Markdown isn't just text;
it’s the bridge that turns a folder of code into a professional project.

On GitHub, Markdown is rendered automatically,
making it the "GUI" for your backend logic.

---

## 1. The "Big Three" Files

In any Git repository,
these three Markdown files are the most important for documentation:

- README.md:
  The landing page.
  It should explain what your student management app does,
  how to install it on Arch,
  and how to run the Prisma migrations.

- CONTRIBUTING.md:
  The rules for your friend (or strangers) on how to add code,
  name branches, and format commits.

- CHANGELOG.md:
  A curated,
  chronological list of notable changes for each version of your project.

---

## 2. GitHub-Flavored Markdown (GFM)

GitHub adds special "superpowers" to standard Markdown
that are incredibly useful for developers:

### A. Syntax Highlighting

Indicate the language after the triple backticks
so GitHub (and Neovim) can color-code your logic.

```typescript
const student = await prisma.student.findUnique({
  where: { id: 1 },
});
```

### B. Task Lists

Perfect for tracking features in an Issue or PR description.

- [x] Setup MariaDB connection

- [ ] Create Enrollment API

- [ ] Add JWT middleware

### C. Autolinks

If you type #12,
GitHub automatically turns it into a clickable link to Issue #12.
If you type a commit SHA (e.g., abc1234),
it links to that specific change.

---

## 3. Advanced Markdown for your Wiki

Since you are organizing a "Personal Development Environment" (PDE),
use these structures to keep your documentation readable:

| Element     | Markdown Syntax | Use Case                                       |
| ----------- | --------------- | ---------------------------------------------- |
| Tables      | \`              | Header                                         |
| Footnotes   | `[^1]`          | Adding technical references without clutter.   |
| Alerts      | `> [!NOTE]`     | Highlighting specific Arch Linux setup quirks. |
| Collapsible | `<details>`     | Hiding long error logs or SQL schemas.         |

---

## 4. The Neovim Workflow

To make writing Markdown as fast as writing Node.js code,
you can optimize your Neovim setup:

- Treesitter:
  Ensure you have the Markdown parser installed
  (:TSInstall markdown) for beautiful syntax highlighting.

- Markdown Preview:
  Use a plugin like markdown-preview.nvim.
  It opens a live-syncing tab in your browser
  that updates as you type in the terminal.

- Snippets:
  Create a snippet for a standard "PR Template"
  so you can generate it with a few keystrokes.

---

## Summary

| Feature | Best Practice                                                                     |
| ------- | --------------------------------------------------------------------------------- |
| Headers | Use ## and ### logically to create a table of contents.                           |
| Images  | Use relative paths (./docs/images/schema.png) so they work locally and on GitHub. |
| Links   | Use descriptive text [API Docs](docs/api.md) instead of [Click here](...).        |
| Linting | Use markdownlint to keep your formatting consistent.                              |
