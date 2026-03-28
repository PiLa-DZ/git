# Issues

---

## 1. Creating Issues

An issue is just a conversation thread
dedicated to a specific problem or task.

- How to create:
  Navigate to the Issues tab in your repo
  and click the green "New Issue" button.

- Pro Tip:
  You can also create issues directly from
  your Arch terminal using the GitHub CLI (gh):

```bash
gh issue create --title "Fix Prisma connection bug" --body "The database times out on Arch Linux."
```

---

## 2. Titles and Descriptions

- Titles:
  Should be concise and actionable
  (e.g., feat: add student login API or bug: broken logout button).

- Descriptions:
  This is where you provide the "What, Why, and How."
  Use Markdown to include code snippets or screenshots.
  > [!TIP]
  > If you are fixing a bug,
  > include "Steps to Reproduce"
  > so your teammate can see exactly what went wrong.

---

## 3. Assignees

Assignees are the people responsible for the issue.

- You can assign an issue to yourself (Nabil) or your frontend friend.

- Constraint:
  You can only assign up to 10 people per issue,
  but usually,
  one or two is best to keep accountability clear.

---

## 4. Labels

Labels help you categorize and filter your issues at a glance.
GitHub provides defaults,
but you can create your own:

- bug: Something is broken.

- enhancement: A new feature request.

- documentation: Updating the README or Wiki.

- help wanted: You're stuck and need your friend's input.

---

## 5. States (Open vs. Closed)

- Open: The task is active or pending.

- Closed: The task is finished or the bug is fixed.

- Magic Link:
  If you write Closes #12 in a Commit Message,
  GitHub will automatically close Issue #12
  the moment you push that code to the main branch.

---

## 6. Comments

Comments are the "Chat Room" for that specific task.

- Instead of talking about a bug on Discord or WhatsApp,
  talk about it in the Issue comments.

- This keeps all technical context attached to the code history forever.

- You can @mention your friend to notify them.

---

## 7. Labels vs. Milestones

This is a common point of confusion:

| Feature    | Purpose                       | Example                       |
| ---------- | ----------------------------- | ----------------------------- |
| Labels     | What kind of task is this?    | "bug, priority:high, backend" |
| Milestones | When should this be finished? | "v1.0 Release, Sprint 2, MVP" |

---

## Summary

| Action       | GitHub Web   | Terminal (gh cli)      |
| ------------ | ------------ | ---------------------- |
| Create Issue | Green Button | gh issue create        |
| View List    | Issues Tab   | gh issue list          |
| Close Issue  | Close button | gh issue close [id]    |
| Filter       | Filter Bar   | gh issue list -l "bug" |

---

## Backup from roadmap.sh

Creating issues: Users can create new issues by submitting a form on the repository's Issues page.
Issue titles and descriptions: Each issue has a title and body (description), which provide context for the problem or request.
Assignees: Issues can be assigned to specific users, who are then responsible for addressing the issue.
Labels: Labels are used to categorize issues by topic, priority, or other criteria. This helps filter and organize issues within a repository.
States: Issues have states that reflect their status, such as "Open", "Closed", or "Pending".
Comments: Users can comment on existing issues to discuss or provide additional context.
Labels and milestones: Issues can be associated with labels (topics) and milestones (deadlines), which help filter and prioritize them.
