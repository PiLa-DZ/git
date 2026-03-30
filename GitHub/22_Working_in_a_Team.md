# - Working in a Team

---

## 1. Collaborators vs. Organization Members

When working with your frontend friend,
you have two choices for how to give them access.

| Feature    | Collaborators (Individual)               | Organization Members (Group)        |
| ---------- | ---------------------------------------- | ----------------------------------- |
| Best For   | Small, one-off projects.                 | Long-term teams and multiple repos. |
| Control    | Granular, repo-by-repo.                  | Centralized management.             |
| Branding   | Personal account (Professor-Nabil/repo). | Custom brand (Our-Studio/repo).     |
| Visibility | They are guests on your project.         | They are part of your "Company."    |

---

## 2. Setting Up a GitHub Organization

It allows you to house your backend, frontend,
and documentation repos under one umbrella.

1. Click the + icon in the top right of GitHub and select New organization.
1. Choose the Free plan (perfect for private repositories and small teams).
1. Invite your friend using their GitHub username.

---

## 3. Teams Within the Organization ( Grouping, Access permissions, Mentions)

As your project grows (adding a mobile dev or a database admin),
you don't want to manage everyone individually. You use Teams.

### A. Grouping --> Create teams based on expertise

- @Our-Org/backend: You and any other Node.js devs.
- @Our-Org/frontend: Your MERN stack partner.
- @Our-Org/maintainers: The lead architects with full "Admin" rights.

### B. Access Permissions --> You can assign different levels of "Read/Write" power to each team

- Read: Can view and clone code (Good for external consultants).
- Triage: Can manage issues and PRs but can't push code.
- Write: Can push code to branches (Standard for your friend).
- Maintain: Can manage the repo but not sensitive settings.
- Admin: Full control (Your role).

### C. The Power of Mentions --> you can ping the whole group in a comment

"Hey @Our-Org/frontend,
I've updated the Prisma schema for the Student model.
Please check if the API response still matches your types."

---

## 4. Professional Access Workflow

1. The Lead (You): Creates the Organization and the backend and frontend teams.

2. The Invitation: Invite your friend to the frontend team.

3. The Protection:
   Set up Protected Branches
   so that even your friend can't push directly to main
   without a PR review from the maintainers team.
