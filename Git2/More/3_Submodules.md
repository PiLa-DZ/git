# Submodules

submodules allow you to include another repository within a project. This feature enables the management of external dependencies as part of the main project.

Including external repositories: Submodules can be used to include other Git repositories within your project.
Managing dependencies: They provide a way to manage and track changes in external dependencies.

- What and Why use?
  - Key points
    1. Separate repositories with independent histories
    1. Parent repository tracks specific submodule commits
    1. Enables code reuse and modular project structure
    1. Helps manage dependencies and keep main repository focused
    1. Facilitates collaboration on complex projects
  - Benefits
    - Including third-party libraries
    - Sharing common code
    - Managing multi-component projects
    - Keeping main repository lightweight
- Adding / Updating
  `To add a submodule to a repository, use git submodule add https://github.com/user/submodule-repo.git, which is the typical format for specifying the URL of the submodule repository. This creates a new folder for the submodule and checks it out at the specified revision. To update an existing submodule to its latest commit, run git submodule update. If you want to pull in changes from upstream while keeping your submodule's history intact, use git submodule sync followed by git submodule update.`
