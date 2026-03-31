# Git hooks (Git hooks are scripts that run automatically at specific points)

---

## 1. What and Why?

Git hooks are simple scripts located in the .git/hooks directory of your project.
They are triggered by specific Git events
(like commit, push, or merge).

- The "What":
  They are executable files
  (usually written in Bash, Python, or Node.js)
  that Git runs automatically.

- The "Why":
  They act as a Quality Firewall.
  They prevent "human error"
  by ensuring your code is formatted, tested,
  and secure before it leaves your Arch Linux terminal.

---

## 2. Client-side vs. Server-side Hooks

The main difference is where the script executes and who it affects.

| Feature     | Client-side Hooks                 | Server-side Hooks                      |
| ----------- | --------------------------------- | -------------------------------------- |
| Location    | Your local machine (.git/hooks).  | The remote server (GitHub/GitLab).     |
| Trigger     | Local actions (Commit, Checkout). | Network actions (Push, Receive).       |
| Use Case    | Linting, formatting, spell-check. | Enforcing branch policies, deployment. |
| Bypassable? | Yes (using --no-verify).          | No (forced by the server).             |

---

## 3. Common Hooks (The Backend Toolkit)

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

## 4. Implementation Pro-Tip: Husky

- On Arch,
  you can write these scripts manually in .git/hooks,
  but in the Node.js ecosystem,
  most developers use a tool called Husky.

  ```bash
  # 1. Install:
  npx husky-init && npm install

  # 2. Add a hook:
  npx husky add .husky/pre-commit "npm run lint"
  ```

- This creates a .husky folder that you can commit to Git,
  ensuring your frontend friend follows the same rules as you.

---

## Summary

| Hook          | Type   | Best for...                                      |
| ------------- | ------ | ------------------------------------------------ |
| pre-commit    | Client | Linting & Formatting.                            |
| commit-msg    | Client | Enforcing message standards.                     |
| pre-push      | Client | Running heavy Integration Tests.                 |
| post-checkout | Client | Syncing node_modules or Prisma.                  |
| pre-receive   | Server | Rejecting pushes with sensitive data (API keys). |
