# Collaboration on GitHub: Forking vs Cloning

- Cloning is a Git action (moving code to your computer),
- Forking is a GitHub action (copying a project to your own account).
- The Collaboration Workflow
  1. Fork: the main project to your account on GitHub.
  2. Clone: You clone your fork to your Arch machine.
     `git clone git@github.com:Nabil/project-fork.git`
  3. Upstream: You link your local folder back to the original project, so you can stay updated.
     `git remote add upstream git@github.com:Original-Owner/project.git`
  4. Push: You push your changes to your fork.
  5. Pull Request (PR):
     You go to GitHub and ask the original owner
     to "Pull" your changes from your fork into their project.
