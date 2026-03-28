# Branch Naming

---

## 1. The Standard Pattern: type/description

The most common and effective naming convention mirrors
the "Conventional Commits" style you've already started using.

Structure: category/short-descriptive-name

| Category  | Purpose                                | Example                      |
| --------- | -------------------------------------- | ---------------------------- |
| feat/     | A new feature or API endpoint.         | feat/student-login-api       |
| fix/      | A bug fix.                             | fix/prisma-timeout-error     |
| docs/     | Documentation or Wiki updates.         | docs/update-arch-setup-guide |
| refactor/ | Improving code without changing logic. | refactor/express-middleware  |
| chore/    | "Maintenance (dependencies, config)."  | chore/update-prisma-client   |
| test/     | Adding or fixing tests.                | test/auth-controller-units   |

---

## 2. Including Issue Numbers

If you are using GitHub Issues to track your tasks,
it is a "Best Practice" to include the issue number in the branch name.
This makes it incredibly easy to link the code to the discussion.

- Pattern: type/issue-number-description

- Example: feat/12-add-course-registration

---

## 3. Golden Rules for Branch Names

1. Use Hyphens (-), Not Underscores (\_):
   Hyphens are standard in URLs and easier to type in the terminal.

2. All Lowercase:
   Git is case-sensitive on some systems
   (like your Arch Linux)
   but not on others.
   Lowercase avoids "phantom" branch conflicts.

3. No Special Characters:
   Avoid @, $, or spaces.
   Stick to alphanumeric characters and hyphens.

4. Short but Meaningful:
   feat/auth is too vague.
   feat/jwt-refresh-token is perfect.

---

## 4. Personal vs. Shared Branches

On your Arch machine,
you might create "trash" branches for experimentation.

- Local Experiment:
  play/trying-new-orm (You don't usually push these).

- Work-in-Progress:  
  wip/student-schema
  (Tells your friend: "I'm working here, don't merge yet").

---

## 5. Why this helps your "PDE" (Personal Development Environment)

When you use a TUI tool like Lazygit or a CLI tool like fzf,
structured naming allows you to filter branches instantly.

- Typing feat/
  in your branch search will instantly hide all bugs and chores,
  letting you focus only on new features.

---

## Summary

| Do...                       | Don't...      |
| --------------------------- | ------------- |
| feat/add-prisma-logging     | new_stuff     |
| fix/issue-42-cors-error     | fix_it_please |
| refactor/api-response-types | Nabil-Changes |
| chore/deps-upgrade          | update123     |
