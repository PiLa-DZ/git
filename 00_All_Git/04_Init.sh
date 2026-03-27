# ===========================================================
git init          # Initialize Git hire
git init dir_name # Initialize Git with new project name

# ===========================================================
# *** The "Bare" Repository *** <-- Use it for Server Hosting.
git init --bare
# Creates a repository that only contains the tracking data
# (no actual code files visible).
# This is what lives on GitHub's servers
# or your own private VPS.
# You "push" to a bare repo;
# you don't "code" in one.

# ===========================================================
# *** Customizing the Default Branch ***
git init -b main
