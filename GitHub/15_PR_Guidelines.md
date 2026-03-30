# Best Practices: PR Guidelines

1. A Pull Request should do one thing well
2. Self-Review First
3. Provide "Context" (The Why, Not the How)
4. Addressing Feedback
   - Don't take it personally:
   - Respond to every comment:
   - Batch your changes: Fix everything in one commit,
5. Use a PR Template
   1. Describe your changes
   2. Related Issue #Issue-Nubmer
   3. How has this been tested?
      - [ ] Ran `npm test`
      - [ ] Manual check in Postman
      - [ ] Verified on Arch Linux local environment
   4. Screenshots (If applicable)
      - Add UI or terminal output here.

---

## 1. A Pull Request should do one thing well

- Bad PR: "Add student login, fix database timeout, and update README typos." (Too big to review).
- Good PR: "feat: add JWT authentication logic." (Focused and easy to test).

## 2. Self-Review First

1. Open the PR as a Draft.
1. Look at the "Files Changed" tab on GitHub.
1. Check for:
   - Leftover console.log statements.
   - Hardcoded passwords or secrets (Check your .env!).
   - Typos in your comments or variables.

## 3. Provide "Context" (The Why, Not the How)

Your code tells the computer how to do something.
Your PR description tells your friend why you chose that approach.

- Bad: "I updated the Prisma schema."

- Good:
  "Updated the Course model to include a capacity field
  because we need to prevent over-enrollment in the backend logic."

## 4. Addressing Feedback

- Don't take it personally:
  Code reviews are about the code,
  not your skills as a developer.

- Respond to every comment:
  Even if it’s just a "Done" or a "Fixed in latest commit."

- Batch your changes:
  Don't push 10 tiny commits for 10 comments.
  Fix everything,
  then push one "fix: address review comments" commit.

## 5. Use a PR Template

create a .github/pull_request_template.md file in your repo.

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
