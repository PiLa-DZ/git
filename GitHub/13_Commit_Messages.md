# Best Practices: Commit Messages

```txt
type(scope): subject
[Optional body]
[Optional footer]
```

- Type:
  - feat
  - fix
  - docs
  - style
  - refactor
  - test
  - chore

- Scope: (prisma, auth, api)

- Subject:
  A concise description (under 50 characters).
  Use the imperative mood ("Add feature" not "Added feature").

## Examples

- feat --> A new feature for the user.
  `feat(api): add student enrollment endpoint`

- fix --> A bug fix.
  `fix(prisma): resolve unique constraint error on email`

- refactor --> Code change that neither fixes a bug nor adds a feature.
  `refactor(auth): simplify JWT verification logic`

- chore --> "Updating build tasks, package manager configs, etc."
  `chore(deps): update express to v5.0.0`

- docs -->Documentation only changes.
  `docs(readme): add installation steps for Arch Linux`

## Rules

| Feature   | Best Practice                                          |
| --------- | ------------------------------------------------------ |
| Length    | "Subject < 50 chars, Body < 72 chars per line."        |
| Mood      | "Imperative (e.g., Update, Remove, Refactor)."         |
| Clarity   | Use Closes #ID in the footer to link to GitHub Issues. |
| Frequency | Atomic commits (one logical change per commit).        |

## Pro Tip

> [!TIP]
> Pro Tip: Commit Templates
> You can tell Git to open your Neovim buffer
> with a pre-filled template to remind you of these rules.

1. Create a file at ~/.gitmessage:

   ```txt
   type(scope): subject

   # Why is this change necessary?
   # How does it address the issue?
   # What side effects does this change have?
   ```

2. Tell Git to use it:

   ```bash
   git config --global commit.template ~/.gitmessage
   ```
