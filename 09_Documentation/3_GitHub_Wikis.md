# GitHub_Wikis

While a README.md is the front door of your project,
a GitHub Wiki is the entire library.
Since you are building a structured student management system,
a Wiki is the perfect place to store "Long-form" documentation
that would make your README too cluttered
like deep dives into your MariaDB schema,
API architectural decisions,
or your specific Arch Linux setup notes.

---

## 1. Wiki vs. README: When to use which?

Think of the Wiki as the "Internal Manual" for you and your friend.

| Feature    | README.md                           | GitHub Wiki                                      |
| ---------- | ----------------------------------- | ------------------------------------------------ |
| Audience   | Newcomers / Evaluators.             | Active developers / Maintainers.                 |
| Content    | "Quick start, high-level overview." | "Detailed API specs, logic flows, setup guides." |
| Format     | Single file in the root.            | Multiple pages with a sidebar.                   |
| Versioning | Changes with the code (Commits).    | Decoupled from code (Separate Git repo).         |

---

## 2. Organizing your Backend Wiki

For a Node.js/Prisma project,
I recommend these core pages to keep your
"Personal Development Environment" (PDE) organized:

- Architecture:
  Explain the folder structure
  (e.g., why you separated Controllers from Services).

- Database Schema:
  A detailed breakdown of the Student
  and Course models,
  including why certain relations exist.

- Environment Setup:
  Deep-dive instructions for Arch users
  (e.g., configuring systemd
  for MariaDB or setting up doas/sudo permissions).

- Deployment:
  How to move the app from your local machine to a server.

---

## 3. The "Secret" Power: The Wiki is a Git Repo

Every GitHub Wiki is actually a separate Git repository
hidden behind your main project.
This is a huge advantage for a terminal user:

1. Go to your Wiki tab and create your first page.

2. Look for the "Clone this wiki locally" link.

3. Clone it to your Arch machine:

   ```bash
   git clone https://github.com/Nabil/students_courses_app.wiki.git
   ```

4. The Workflow:
   You can now use Neovim to write your documentation locally,
   commit the changes,
   and git push.
   They will appear instantly on the GitHub Wiki page.

---

## 4. Best Practices for Structure

- Use the Sidebar:
  Create a \_Sidebar.md file to keep navigation consistent across all pages.

- Inter-linking:
  Use [[Page Name]] to quickly link between different Wiki pages.

- Code Snippets:
  Use full syntax highlighting for complex Express middleware examples.

- Visuals:
  Since you are building a database-heavy app,
  link to or embed an Entity Relationship Diagram (ERD).

---

## Summary

| Feature        | Pro-Tip                                                                          |
| -------------- | -------------------------------------------------------------------------------- |
| Sidebar        | "Keep it simple; group related pages (e.g., ""API,"" ""Database,"" ""DevOps"")." |
| Footer         | "Use a \_Footer.md for copyright or ""Back to Top"" links."                      |
| Search         | "GitHub Wikis are searchable, so use clear keywords in your headers."            |
| Offline Access | "Since it's a Git repo, you can read your docs offline on your laptop."          |
