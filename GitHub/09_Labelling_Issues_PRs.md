# Collaboration on GitHub: Labelling Issues PRs.md

On GitHub, # labels are a way to categorize issues and pull requests (PRs)
by topic, priority, or other criteria.

Some common labels used are:
(Bug, Duplicate, Enhancement, Feature request, High priority, Needs feedback)

---

## Standard Label Categories

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

## Labelling Pull Requests (The "Review" Status)

- breaking-change --> Warning! This will change the database schema or API endpoints.
- dependencies -----> Automatically applied by tools like Dependabot when updating package.json.
- wip --------------> (Work In Progress) "Don't merge this yet; I'm still coding in Neovim."
- needs-review -----> "I'm done; someone please look at my code."
