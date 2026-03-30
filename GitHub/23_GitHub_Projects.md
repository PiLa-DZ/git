# GitHub Projects

---

## 1. Project Planning: The "Why" Before the "How"

Before writing a single line of Node.js code, a professional engineer defines the scope.
GitHub Projects (the "New" version)
allows you to group Issues and Pull Requests into a high-level view.

- Draft Issues:
  You can create "ideas" that aren't full issues yet
  perfect for brainstorming Express middleware or MariaDB schema changes.

- Custom Fields:
  Add metadata like "Priority" (High/Low),
  "Estimate" (Story Points), or "Sprint Number."

---

## 2. Kanban Boards: Visualizing the Flow

The Kanban board is the heart of agile development.
It prevents you and your friend from working on the same task simultaneously.

- Columns: Typically Todo, In Progress, In Review (PR stage), and Done.

- WIP Limits:
  A pro-tip is to limit "In Progress" to 2 or 3 items.
  If you have 5 things in progress,
  you aren't finishing anything
  you're just "context switching" on your Arch machine.

---

## 3. Roadmaps: The Long-Term Vision

Since you are following industry-standard roadmaps for your career,
use the Roadmap view to plan your app's evolution.

- Timeline View: Visualize your project over weeks or months.

- Milestones: Set a date for "V1.0 - Backend Complete."

- Dependencies:
  Mark that the "Frontend Login" task cannot start
  until the "JWT Authentication" issue is closed by you.

---

## 4. Automations: Let the Robot Work

As a backend dev,
you should automate everything.
GitHub Projects has "Workflows" built-in
that handle the "busy work" of moving cards.

| Trigger           | Automatic Action                         |
| ----------------- | ---------------------------------------- |
| New Issue Created | Add to Project board in Todo column.     |
| PR Opened         | Move the linked Issue to In Progress.    |
| PR Approved       | Move to In Review.                       |
| PR Merged         | Move to Done and close the linked Issue. |

---

## 5. Integration with your "PDE"

You don't always need to open a browser.
Since you have the gh CLI installed on Arch:

```bash
# List your projects
gh project list
# View the items in your "Student App" project
gh project item-list [number]
```
