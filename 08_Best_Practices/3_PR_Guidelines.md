# PR Guidelines

---

## 1. The "Atomic" PR Rule

A Pull Request should do one thing well.

- Bad PR:
  "Add student login,
  fix database timeout,
  and update README typos."
  (Too big to review).

- Good PR:
  "feat: add JWT authentication logic." (Focused and easy to test).

Why?
If the login logic is great
but the database fix is broken,
your friend has to reject the entire PR.
Small PRs are merged faster.

---

## 2. Use a PR Template

To ensure you and your friend provide the same information every time,
create a .github/pull_request_template.md file in your repo.
GitHub will automatically load this text when you open a PR.

### Example Template for your Wiki

```markdown
## Describe your changes

- What part of the Node.js/Prisma logic changed?

## Related Issue

- Closes # [Issue Number]

## How has this been tested?

- [ ] Ran `npm test`
- [ ] Manual check in Postman
- [ ] Verified on Arch Linux local environment

## Screenshots (If applicable)

- Add UI or terminal output here.
```

---

## 3. The "Self-Review" First

Before you ask your friend to look at your code,
be your own first reviewer.

1. Open the PR as a Draft.

1. Look at the "Files Changed" tab on GitHub.

1. Check for:
   - Leftover console.log statements.
   - Hardcoded passwords or secrets (Check your .env!).
   - Typos in your comments or variables.

---

## 4. Provide "Context" (The Why, Not the How)

Your code tells the computer how to do something.
Your PR description tells your friend why you chose that approach.

- Bad: "I updated the Prisma schema."

- Good:
  "Updated the Course model to include a capacity field
  because we need to prevent over-enrollment in the backend logic."

---

## 5. Addressing Feedback

When your friend leaves a comment on your PR:

- Don't take it personally:
  Code reviews are about the code,
  not your skills as a developer.

- Respond to every comment:
  Even if it’s just a "Done" or a "Fixed in latest commit."

- Batch your changes:
  Don't push 10 tiny commits for 10 comments.
  Fix everything,
  then push one "fix: address review comments" commit.

---

## Summary

| Step      | Best Practice                                                        |
| --------- | -------------------------------------------------------------------- |
| Branching | Always create a feature branch; never PR from main.                  |
| Title     | "Use Conventional Commits style (e.g., feat: ...)."                  |
| Testing   | Ensure the build passes in your Arch terminal before opening the PR. |
| Merging   | "Use ""Squash and Merge"" to keep the main history clean."           |
