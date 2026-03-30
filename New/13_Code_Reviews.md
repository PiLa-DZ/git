# Code Reviews

## 1. What to Look for (The Backend Checklist)

- Logic & Safety --> Are there any race conditions? Is user input validated before hitting the database?
- Performance -----> "Is there an ""N+1 query"" problem in the Prisma logic? Are we fetching too much data?"
- Readability -----> "Would a stranger (or ""Future Nabil"") understand this code in 6 months?"
- Consistency -----> Does the code follow your project's naming conventions and folder structure?

## 2. Using GitHub's Review Tools

- Comment: General feedback without a formal "Pass" or "Fail." Use this for questions.
- Approve: The code is ready to be merged.
- Request Changes: The code has issues that must be fixed before it hits main.
