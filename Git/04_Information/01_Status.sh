# ===========================================================
# *** Three Sections of Status ***
git status
# 1. Changes to be committed:       (Files in Staging Area) Green
# 2. Changes not staged for commit: (The Working Directory) Red
# 3. Untracked files:               (files you just created) Red

# ===========================================================
# *** Branch Information ***
# At the very top, status tells you your "Relationship Status" with GitHub:
#
# up to date --> Your branch is up to date ------------> You and GitHub are in sync.
# ahead -------> Your branch is ahead by 2 commits ----> You have local work you haven't pushed yet.
# behind ------> Your branch is behind by 1 commit ----> Someone else pushed code, and you need to pull.

# ===========================================================
# *** Special Situations ***
# git status changes its behavior
# when you are in the middle of a complex operation:
#
#### During a Merge Conflict:
# ---> It will list files as "both modified"
# ---> and tell you exactly which files need surgery.
#### During a Rebase:
# ---> It will tell you which commit number you are currently "replaying"
# ---> and how to continue or abort.

# ===========================================================
# *** "Short" Status (-s) ***
git status -s
# What the letters mean:
# --------------------------------------
# 1. Untracked Files (files you just created)
# ??: ---------> in Working Directory
# A: ----------> in Staging Area
#
# --------------------------------------
# 2. Modified Files
# M (Red): ----> in Working Directory
# M (Green): --> in Staging Area
#
# --------------------------------------
# 3. Deleted Files
# D (Red):-----> in Working Directory
# D (Green):---> in Staging Area
