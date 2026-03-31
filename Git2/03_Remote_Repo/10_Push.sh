git push -u origin main # First Time Push (Set Upstream)
git push                # Every day, once your branch is already "linked" to GitHub.

# The "Force" Push (History Rewriting) ============================
# -----------------------------------------------------------------
# BUG: The Danger: It can overwrite your teammates' work
git push --force
# After you have performed a (Rebase, Squash, Amend)
# on commits that were already on GitHub.
# It tells GitHub, "Ignore what you have;
# my local history is the new truth
# -----------------------------------------------------------------
# TODO: the safer version:
git push --force-with-lease
# It will refuse to push
# if someone else has added new commits to GitHub
# that you don't have yet.

# Pushing All Branches ============================================
# It pushes all local branches that have a matching remote.
git push --all origin

# Pushing Tags ====================================================
# send your version tags to the GitHub "Releases" page.
git push origin --tags
