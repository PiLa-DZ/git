# Contribution Guidelines

Whether you are inviting your friend
to help with your student management app
or preparing to share your Node.js project
with the Arch Linux community,

Contribution Guidelines
(usually stored in a CONTRIBUTING.md file)
are the "Instruction Manual" for your repository.

They ensure that anyone from your closest collaborator
to a random developer on GitHub
knows exactly how to propose a change without breaking your workflow.

---

## 1. Why create a CONTRIBUTING.md?

Without guidelines,
contributors might send you "messy" code that doesn't follow your style,
has no tests,
or is pushed directly to the wrong branch.
Guidelines help you:

- Maintain Code Quality:
  Ensure everyone uses the same Prisma patterns and TypeScript types.

- Save Time:
  You won't have to repeat the same instructions
  ("Please use hyphens in branch names") over and over.

- Onboard Faster:
  A new developer can read one file
  and start coding on their own machine.

---

## 2. What to Include (The Backend Edition)

Since you are running a Node.js/MariaDB stack on Arch,
your guidelines should be specific to that environment.

### A. Environment Setup

Tell them how to get the app running.

- "You need Node.js v20+ and MariaDB installed."

- "Copy .env.example to .env and update your database credentials."

- "Run npx prisma migrate dev to sync your local schema."

### B. Branching & Commits

Enforce the standards you've already learned.

- "Create a feature branch using feat/description."

- "Follow the Conventional Commits standard for all messages."

### C. Coding Standards

- "We use ESLint and Prettier. Run npm run lint before committing."

- "Ensure all new API endpoints are documented in the /docs folder."

### D. The PR Process

- "All Pull Requests must be opened against the develop branch, not main."

- "A PR must be approved by at least one maintainer (Nabil) before merging."

---

## 3. A Template for your Wiki

You can copy this structure into a CONTRIBUTING.md file in your project root:

```markdown
# Contributing to [Project Name]

First off, thanks for taking the time to contribute! 🎉

## How Can I Contribute?

### Reporting Bugs

- Use the GitHub Issue tracker.
- Include your OS (e.g., Arch Linux), Node version, and steps to reproduce.

### Suggesting Enhancements

- Open a Discussion first to brainstorm the logic.

## Pull Request Process

1. Fork the repo and create your branch from `main`.
2. Ensure your code passes the linter: `npm run lint`.
3. If you added a new Prisma model, include the migration file.
4. Open a PR with a clear description of the "Why" behind the change.
```

---

## 4. Pro Tip: The "Issue First" Rule

In your guidelines,
it is common to ask contributors to open an Issue
before starting work on a major feature.

This prevents two people from accidentally working
on the exact same task
and saves them from writing code
that you might ultimately decide not to include in the project.

---

## Summary

| Section       | Key Content                                         |
| ------------- | --------------------------------------------------- |
| Prerequisites | "Software versions (Node, MariaDB, Arch packages)." |
| Workflow      | Forking -> Branching -> Coding -> PR.               |
| Testing       | "How to run the test suite (e.g., npm test)."       |
| Style         | Naming conventions for variables and branches.      |
