# Common Hooks

- pre-commit ---> Runs first, before you even type a commit message.
- commit-msg ---> Runs after you write your message but before the commit is finalized
- pre-push -----> Runs just before git push sends data to GitHub
- post-checkout > Runs after you switch branches
- post-update --> Runs on the remote server after a push is completed.

---

## Summary

| Hook          | Type   | Best for...                                      |
| ------------- | ------ | ------------------------------------------------ |
| pre-commit    | Client | Linting & Formatting.                            |
| commit-msg    | Client | Enforcing message standards.                     |
| pre-push      | Client | Running heavy Integration Tests.                 |
| post-checkout | Client | Syncing node_modules or Prisma.                  |
| pre-receive   | Server | Rejecting pushes with sensitive data (API keys). |

---

## Common Hooks (The Backend Toolkit)

### pre-commit (Client-side)

- This runs first, before you even type a commit message.
- Use Case: Running npm run lint or prettier --check.
- Backend Logic:
  Use this to ensure your TypeScript types are valid.
  If the linter finds an error,
  the commit is aborted,
  saving your history from "Fix linting" commits.

### commit-msg (Client-side)

- This runs after you write your message but before the commit is finalized
- Use Case:
  Enforcing Conventional Commits
  (ensuring messages start with feat:, fix:, or docs:).
- Logic:
  It checks the temporary file containing your message;
  if the format is wrong, it rejects the commit.

### pre-push (Client-side)

- This runs just before git push sends data to GitHub.
- Use Case: Running your full test suite (npm test).
- Logic:
  Since tests take longer than linting,
  you run them here.
  It prevents you from pushing "broken" logic to your friend.

### post-checkout (Client-side)

- Runs after you switch branches.
- Use Case: Automatically running npm install or npx prisma generate.
- Logic:
  If your friend added a new dependency
  or changed the database schema in their branch,
  this hook ensures your local Arch environment stays synced.

### post-update (Server-side)

- Runs on the remote server after a push is completed.
- Use Case:
  Triggering a notification to a Discord/Slack channel
  or starting a deployment script.
- Logic:
  It is primarily used to update "auxiliary" info,
  like a website's live build.

---
