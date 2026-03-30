# Best Practices: Branch Naming

## 1. The Standard Pattern: type/description

Structure: category/short-descriptive-name

| Category  | Purpose                                | Example                      |
| --------- | -------------------------------------- | ---------------------------- |
| feat/     | A new feature or API endpoint.         | feat/student-login-api       |
| fix/      | A bug fix.                             | fix/prisma-timeout-error     |
| docs/     | Documentation or Wiki updates.         | docs/update-arch-setup-guide |
| refactor/ | Improving code without changing logic. | refactor/express-middleware  |
| chore/    | "Maintenance (dependencies, config)."  | chore/update-prisma-client   |
| test/     | Adding or fixing tests.                | test/auth-controller-units   |

## 2. Including Issue Numbers

- Pattern: type/issue-number-description
- Example: feat/12-add-course-registration

## 3. Rules

1. Use Hyphens (-), Not Underscores (\_):
2. All Lowercase:
3. No Special Characters: Avoid @, $, or spaces.
4. Short but Meaningful:
   feat/auth is too vague.
   feat/jwt-refresh-token is perfect.

## 4. Personal vs. Shared Branches

- Local Experiment: (You don't usually push these).
- Work-in-Progress: (Tells your friend: "I'm working here, don't merge yet").
