# Documentation: Markdown

1. The "Big Three" Files --> most important for documentation
   - README.md -------> The landing page.
   - CONTRIBUTING.md -> Rules for your friend.
   - CHANGELOG.md ----> list of notable changes for each version.

1. GitHub-Flavored Markdown (GFM)
   - Syntax Highlighting `console.log('hi')`
   - Task Lists `- [x] first, - [ ] second, - [ ] third`
   - Autolinks --> automatically turns it into a clickable link to Issue #12

1. Advanced Markdown for your Wiki
   - Tables --------> `
   - Footnotes -----> [^1]
   - Alerts --------> > [!NOTE]
   - Collapsible ---> <details>

Basic syntax: Use headers (# Heading), bold/italic text (bold, italic), and lists (- item) to format text.
Links: Create links with [text](url) or [text][ref].
Images: Embed images with [![alt-text](image-url)].

---

## 1. The "Big Three" Files --> most important for documentation

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

### A. Syntax Highlighting

Indicate the language after the triple backticks
so GitHub (and Neovim) can color-code your logic.

```typescript
const student = await prisma.student.findUnique({
  where: { id: 1 },
});
```

### B. Task Lists

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
