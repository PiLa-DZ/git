# =======================================================
# stick onto a specific commit to mark it as important

# =======================================================
# *** When to use it ***
# You will primarily use tags to mark Versions
# of your software (like v1.0.0, v2.1-beta, etc.).

# =======================================================
# *** Why use Tags ***
# If you tag a commit as v1.0,
# that tag will always point to that specific version of your code,
# even if you add 1,000 more commits to the project later.

# =======================================================
# *** The Two Types of Tags ***
# ----------------------------------------------------
##### Lightweight Tags
git tag v1.0.0
# This is just a pointer to a commit.
# No extra info, no signature.
# ----------------------------------------------------
##### Annotated Tags (Recommended)
git tag -a v1.0.0 -m "Initial release of the student management app"
# These are stored as full objects in the Git database.
# They include the tagger’s name (Nabil), email, date,
# and a message (like a commit message).

# =======================================================
# *** How to see and use your Tags ***
# ----------------------------------------------------
## List all tags:
git tag
# ----------------------------------------------------
## See details of a tag
# (This shows you the code changes and the message)
git show v1.0.0
# ----------------------------------------------------
## Go back to a tag
# NOTE: This puts you in a "Detached HEAD" state
# because you aren't on a branch.
# It’s for viewing the old code,
# not for editing it.
git checkout v1.0.0

# =======================================================
# *** Pushing Tags to GitHub ***
# git push does not send tags to GitHub by default.
# You have to be explicit.
# ----------------------------------------------------
## Push ALL your tags at once:
git push origin --tags
# ----------------------------------------------------
## Push a specific tag:
git push origin v1.0.0
