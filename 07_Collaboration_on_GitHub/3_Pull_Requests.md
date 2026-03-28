# Pull Requests

A Pull Request (PR) is the most important "Social" feature of GitHub.

It is how you tell your collaborators:
"I have finished the code for this feature;
please look at it,
discuss it,
and if it's good,
merge it into the main project."

---

## 1. The Pull Request Workflow

On your Arch machine,
the process usually follows these 5 steps:

1. Branch:
   You create a new branch locally for a specific task
   (e.g., feat-auth-api).

2. Commit & Push:
   You write your Node.js code,
   commit it,
   and push that branch to GitHub.

3. Open PR:
   You go to GitHub
   (or use gh pr create in your terminal).
   You select your feature branch as the "Head"
   and main as the "Base."

4. Review:
   Your friend looks at the code,
   leaves comments,
   and asks for changes if something looks wrong.

5. Merge:
   Once approved,
   the code is "Merged" into main,
   and the feature branch is deleted.

---

## 2. Anatomy of a Great PR

When you open a PR,
you should treat it like a professional document:

- Title:
  Concise and clear (e.g., feat: implement JWT authentication).

- Description:
  Use a template. Explain what changed and why.

  > [!TIP]
  > Pro Tip: Use the keyword Closes #12 in your description.
  > This automatically links the PR to Issue #12
  > and closes the issue when the PR is merged.

- Diff View:
  GitHub shows a side-by-side comparison of
  the old code vs. your new code.
  This is where the actual review happens.

---

## 3. Reviewing Code (The "Conversation")

This is where the collaboration happens.
Your friend can:

- Comment on specific lines:
  They can click a line of code and say,
  "Hey Nabil, maybe use an environment variable
  for this secret key instead of hardcoding it."

- Request Changes:
  They formally block the merge until you fix a specific issue.

- Approve: They give the "Green Light" to merge.

---

## 4. Merging Strategies

When it’s time to merge,
GitHub gives you three main options:

| Strategy              | What it does                                                                  | Best For...                                                  |
| --------------------- | ----------------------------------------------------------------------------- | ------------------------------------------------------------ |
| Create a Merge Commit | "Combines all history into one new ""Merge"" point."                          | Preserving the full history of every single tiny commit.     |
| Squash and Merge      | "Combines all 10 of your ""work-in-progress"" commits into one clean commit." | Keeping the main branch history extremely tidy and readable. |
| Rebase and Merge      | Moves your changes to the tip of main without a merge commit.                 | "A perfectly linear, straight-line history."                 |

---

## Summary

| Term           | Definition                                                                  |
| -------------- | --------------------------------------------------------------------------- |
| Base Branch    | The destination (usually main).                                             |
| Head Branch    | Your feature branch containing the new code.                                |
| Draft PR       | "A PR that isn't ready for review yet, but you want to show your progress." |
| Merge Conflict | When someone else changed the same lines you did while you were working.    |

---

## 6. Using the Terminal (gh CLI)

Since you love your Arch terminal,
you don't even need to open a browser to handle PRs:

- Create a PR:

  ```bash
  gh pr create --title "Add student schema" --body "Linking Prisma models"
  ```

- List PRs:

  ```bash
  gh pr list
  ```

- Check out a friend's PR locally:

  ```bash
  gh pr checkout 12 (This is amazing for testing their code on your machine).
  ```

---

## More From roadmap.sh

---

### PR from a Fork

#### 1. The 6-Step Workflow

Since you're already comfortable with the terminal and git,
here is how the physical movement of code looks:

1. Fork:
   On GitHub,
   click "Fork" to create github.com/Nabil/original-repo
   (your server-side copy).

2. Clone: Bring your fork down to your Arch machine:

   ```bash
   git clone git@github.com:Nabil/original-repo.git
   ```

3. Branch: Create a new feature branch locally:

   ```bash
   git checkout -b feat-fix-prisma-types
   ```

4. Commit & Push:
   Make your changes in Neovim, then push them back to your fork:

   ```bash
   git push origin feat-fix-prisma-types
   ```

5. Open PR:
   On the original repository's GitHub page,
   you will see a yellow bar saying "Compare & pull request."

6. Review:
   The original maintainer reviews your code.
   If they ask for changes,
   you just commit and push to your branch again;
   the PR updates automatically.

#### 2. The "Upstream" Connection

The biggest challenge with a fork
is that the original project
keeps moving forward while you are working.

If you don't sync, your PR will have "Merge Conflicts."

On your Arch terminal,
you should link your local folder to the original project (usually called upstream):

```bash
# Link to the original project
git remote add upstream git@github.com:Original-Owner/original-repo.git

# Sync your local 'main' with the original project
git fetch upstream
git checkout main
git merge upstream/main
```

#### 3. PR from Fork vs. PR from Branch

If you are working with your friend on your students_courses_app,
you likely use Branches.
If you are contributing to a tool like prisma or neovim, you use Forks.

| Feature          | PR from Branch                           | PR from Fork                             |
| ---------------- | ---------------------------------------- | ---------------------------------------- |
| Permissions      | "You have ""Write"" access to the repo." | You have no access to the original repo. |
| Push Destination | The same repository.                     | Your own personal fork.                  |
| Common Use       | Private teams / Small projects.          | Open Source / Large Organizations.       |
| Security         | High trust (Internal).                   | Zero trust (External contributions).     |

#### 4. Pro Tip: The "Allow Edits" Checkbox

When you submit a PR from a fork,
there is a checkbox that says "Allow edits from maintainers." \* Keep this checked.

It allows the original owner to make tiny fixes
(like typos or linting)
directly to your PR branch.

This speeds up the merging process significantly
because they don't have to wait for you to wake up and fix a semi-colon.

#### 5. Using the GitHub CLI (gh)

You can handle this entire "Fork-to-PR" flow
without ever leaving your terminal:

```bash
# 1. Fork and Clone in one go
gh repo fork Original-Owner/original-repo --clone

# 2. Create the PR after you've pushed your branch
gh pr create --repo Original-Owner/original-repo --title "Fix: Prisma schema" --body "Detailed explanation"
```

---

### Collaborators

#### 1. What can a Collaborator do?

Once you add someone as a collaborator on your repository,
they gain several "Power User" abilities:

- Push Directly:
  They can push commits from their local machine to any branch in your repo.

- Manage Issues/PRs:
  They can label, assign, close, and edit issues and pull requests.

- Merge Code:
  They have the authority to hit the "Merge" button
  on a PR (unless you've set up Branch Protection rules).

- Create Branches:
  They can create new feature branches directly on your repository's server.

#### 2. How to Add a Collaborator

You can only add collaborators
if you are the Owner of the repository:

1. Navigate to your repository on GitHub.

2. Click Settings --> Collaborators.

3. Click Add people.

4. Search for your friend's GitHub username or email and send the invite.

5. Important:
   Your friend must accept the invitation
   (via email or their GitHub notifications)
   before they can start pushing code.

#### 3. Collaborators vs. Organizations

For your current setup, "Collaborators" is perfect.
But as your backend projects grow,
you might notice a shift in how access is managed:

| Feature    | Collaborator (Individual)                  | Organization Member                            |
| ---------- | ------------------------------------------ | ---------------------------------------------- |
| Setup      | Added per-repository.                      | Added once to the whole Org.                   |
| Best For   | Small 1-on-1 projects or friends.          | "Startups, teams, and large projects."         |
| Management | Manual (one by one).                       | "Grouped into ""Teams"" (e.g., Backend Team)." |
| Ownership  | The repo belongs to your personal account. | The repo belongs to the Organization.          |

#### 4. Security Tip: The "Invite-Only" Rule

Even though your friend is a collaborator,
it’s a "Best Practice" to still use Pull Requests.

- Just because they can push directly to main doesn't mean they should.

- By using PRs,
  you can still review each other's Node.js logic
  and Prisma schema changes before they become permanent.

#### 5. Using the GitHub CLI (gh)

You can manage your collaborators
right from your Arch terminal:

```bash
# Invite your friend to the current repo
gh repo invite-collaborator [username]

# List all current collaborators
gh api repos/:owner/:repo/collaborators --jq '.[].login'
```

#### Summary

| Role         | Access Level      | When to use?                    |
| ------------ | ----------------- | ------------------------------- |
| Owner        | Full Admin        | You (Nabil).                    |
| Collaborator | Read/Write        | Your frontend friend.           |
| Contributor  | Read/Pull Request | A stranger who forks your repo. |
