# Code Reviews

---

## 1. The Reviewer's Mindset

A code review is a technical conversation,
not an audit.

- Be Constructive:
  Instead of saying "This is wrong,"
  try "Have you considered using async/await
  here to avoid the callback hell?"

- Praise Good Work:
  If you see a particularly clever use of TypeScript types
  or a clean Express middleware,
  say so! It builds morale.

- Distinguish "Needs Change" vs. "Nitpick":
  If a variable name is slightly off but the code is perfect,
  mark it as a nit: so your friend knows it's optional.

---

## 2. What to Look for (The Backend Checklist)

Since you are focusing on Node.js and MariaDB,
your reviews should prioritize these four areas:

| Area           | What to Check                                                                           |
| -------------- | --------------------------------------------------------------------------------------- |
| Logic & Safety | Are there any race conditions? Is user input validated before hitting the database?     |
| Performance    | "Is there an ""N+1 query"" problem in the Prisma logic? Are we fetching too much data?" |
| Readability    | "Would a stranger (or ""Future Nabil"") understand this code in 6 months?"              |
| Consistency    | Does the code follow your project's naming conventions and folder structure?            |

---

## 3. Using GitHub's Review Tools

GitHub provides specific "States"
for a review to make the workflow clear:

- Comment:
  General feedback without a formal "Pass"
  or "Fail." Use this for questions.

- Approve:
  The code is ready to be merged.

- Request Changes:
  The code has issues that must
  be fixed before it hits main.

---

## 4. Reviewing in the Terminal (gh CLI)

Since you prefer staying in your Arch terminal,
you can perform reviews without opening a browser.
This is incredibly fast for checking logic:

```bash
# View the changes in a PR
gh pr diff [number]

# Start an interactive review
gh pr review [number] --approve --body "Great work on the Prisma migrations!"

# If you need to run the code to test it:
gh pr checkout [number]
```

---

## 5. Best Practices for the "Author"

If you are the one receiving the review:

1. Don't be Defensive:
   Every piece of feedback is an opportunity
   to learn a new trick
   or catch a bug before it crashes your MariaDB instance.

2. Explain the "Why":
   If you chose a specific encryption algorithm
   or a complex recursive type,
   leave a comment in the code
   (or the PR)
   explaining your reasoning before they ask.

3. Use Draft PRs:
   If you want early feedback on a half-finished feature,
   open it as a "Draft."
   This tells your friend,
   "Look at the logic, but ignore the typos for now."

---

## Summary

| Feature    | Best Practice                                                   |
| ---------- | --------------------------------------------------------------- |
| Tone       | Objective and kind.                                             |
| Scope      | "Focus on logic, security, and architecture."                   |
| Automation | Let ESLint/Prettier handle style; humans should focus on logic. |
| Speed      | Try to review PRs within 24 hours to keep the project moving.   |

---

## Backup from roadmap.sh

Increase code quality by identifying defects in the code and issues such as security vulnerabilities and performance problems—before developers merge the code into an upstream branch.
Ensure compliance with organizational standards, regulations, and the team’s code style.
Save time and money by detecting issues earlier in the software development process before they become more complex and expensive to fix.
Boost collaboration, communication, and knowledge sharing among developers by providing a forum to discuss code and ask questions, share ideas and best practices, and learn from each other.
Ensure that the code is maintainable by identifying any software maintenance issues and suggesting improvements.
