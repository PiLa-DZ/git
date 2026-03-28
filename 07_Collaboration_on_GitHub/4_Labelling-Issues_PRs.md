# Labelling Issues PRs

In a busy repository
like the one you're building for your student management app
Labels are the "DNA" of your project management.

They allow you to categorize, prioritize,
and filter through dozens of Issues
and Pull Requests at a glance.

Whether you are looking at GitHub in a browser or using the gh CLI,
labels make your workflow searchable.

---

## 1. Why Label Everything?

Without labels,
a list of 20 issues is just a wall of text.
With labels, you can instantly see:

- The "What":
  Is this a backend bug or a documentation update?

- The "Who":
  Is this for the frontend developer or the database specialist?

- The "Urgency":
  Does this need to be fixed today (Critical) or next month (Backlog)?

---

## 2. Standard Label Categories

GitHub provides a set of default labels,
but as a Node.js/Prisma developer,
you should customize them to fit
your "Personal Development Environment" (PDE) workflow.

| Label Name       | Category   | Purpose                                             |
| ---------------- | ---------- | --------------------------------------------------- |
| bug              | Type       | Something isn't working as expected.                |
| enhancement      | Type       | A new feature or request for improvement.           |
| priority:high    | Urgency    | This needs to be addressed in the current sprint.   |
| area:backend     | Domain     | "Tasks involving Node.js, Express, or Prisma."      |
| area:frontend    | Domain     | Tasks involving the UI/MERN stack.                  |
| good first issue | Onboarding | Simple tasks for new contributors (or your friend). |
| blocked          | Status     | Cannot proceed until something else is finished.    |

---

## 3. Labelling Pull Requests (The "Review" Status)

Labelling PRs is slightly different than labelling Issues.
PR labels usually describe the state of the code
or the impact of the change.

- breaking-change:
  Warning! This will change the database schema or API endpoints.

- dependencies:
  Automatically applied by tools like Dependabot when updating package.json.

- wip:
  (Work In Progress) "Don't merge this yet; I'm still coding in Neovim."

- needs-review:
  "I'm done; someone please look at my code."

---

## 4. How to Apply Labels

On the Web Interface:

1. Open an Issue or PR.

2. On the right-hand sidebar, click the "Labels" gear icon.

3. Select existing labels or type to create a new one.

### From your Arch Terminal (gh CLI)

Since you prefer the terminal, this is much faster:

```bash
# Create an issue with labels
gh issue create --title "Fix Prisma timeout" --label "bug,priority:high,area:backend"

# Add a label to an existing PR
gh pr edit 12 --add-label "needs-review"
```

---

## 5. Filtering with Labels

The real power comes when you have 50 issues.
You can use the GitHub search bar to filter your view:

- is:open label:bug: Show me all active bugs.

- is:pr label:area:backend: Show me only backend-related Pull Requests.

- is:open -label:blocked: Show me everything I can actually work on right now.

---

## Summary

| Feature      | Best Practice                                                                                                                        |
| ------------ | ------------------------------------------------------------------------------------------------------------------------------------ |
| Color Coding | Use bright colors (Red/Orange) for bugs/urgent tasks and cool colors (Blue/Green) for features.                                      |
| Consistency  | Use a prefix like area: or status: so labels group together alphabetically.                                                          |
| Automation   | "Use ""GitHub Actions"" to automatically add labels based on which files were changed (e.g., if prisma/ changed, add area:backend)." |

---

## Backup from roadmap.sh

On GitHub, labels are a way to categorize issues and pull requests (PRs) by topic, priority, or other criteria. Some common labels used are:

Bug
Duplicate
Enhancement
Feature request
High priority
Needs feedback
