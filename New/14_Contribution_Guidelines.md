# Contribution Guidelines --> "Instruction Manual" for your repository

CONTRIBUTING.md -->
Ensure anyone knows exactly how to propose a change without breaking your workflow.

- Prerequisites --> "Software versions (Node, MariaDB, Arch packages)."
- Workflow -------> Forking -> Branching -> Coding -> PR.
- Testing --------> "How to run the test suite (e.g., npm test)."
- Style ----------> Naming conventions for variables and branches.

## 1. What to Include (The Backend Edition)

### A. Environment Setup --> Tell them how to get the app running

- "You need Node.js v20+ and MariaDB installed."
- "Copy .env.example to .env and update your database credentials."
- "Run npx prisma migrate dev to sync your local schema."

### B. Branching & Commits --> Enforce the standards you've already learned

- "Create a feature branch using feat/description."
- "Follow the Conventional Commits standard for all messages."

### C. Coding Standards

- "We use ESLint and Prettier. Run npm run lint before committing."
- "Ensure all new API endpoints are documented in the /docs folder."

### D. The PR Process

- "All Pull Requests must be opened against the develop branch, not main."
- "A PR must be approved by at least one maintainer (Nabil) before merging."

---

> [!TIP]
> Pro Tip: The "Issue First" Rule

In your guidelines,
it is common to ask contributors to open an Issue
before starting work on a major feature.

This prevents two people from accidentally working
on the exact same task
and saves them from writing code
that you might ultimately decide not to include in the project.
