# | Target   | Command              | When to use it?                       |
# | -------- | -------------------- | ------------------------------------- |
# | Unstaged | git diff             | "What did I just type?"               |
# | Staged   | git diff --cached    | "What am I about to commit?"          |
# | Commits  | git diff hash1 hash2 | "How did we get from A to B?"         |
# | Branches | git diff b1..b2      | "What did my friend change?"          |
# | Words    | git diff --word-diff | Checking small variable name changes. |

# 1. Unstaged Changes (The Default)
git diff

# 2. Staged Changes (git diff --cached)
git diff --cached
git diff --staged

# 3. Between Commits (Time Travel)
git diff old-hash new-hash
git diff HEAD~5 HEAD

# 4. Between Branches (The Bridge)
git diff main..ui-branch
# The "One File" Trick: If you only want to see the difference in a shared types file:
git diff main..ui-branch -- src/shared/types.ts

# =========================================================
# 5. Best Aliases for your PDE
# --- Git Diff Aliases ---
alias df="git diff"             # Unstaged (Working Directory)
alias dc="git diff --cached"    # Cached (Staging Area)
alias dw="git diff --word-diff" # Word-by-word diff (Great for refactors)

# Diff between branches (Usage: db main feature-branch)
db() {
  git diff "$1"..."$2"
}

# Diff specific file between two commits
# Usage: dfile [hash1] [hash2] [path]
dfile() {
  git diff "$1" "$2" -- "$3"
}

# ==================================================
# *** The Three Main "Views" of Diff ***
# -------------------------------------------
# What did I just type?
git diff
# Shows Differences between your
# (Working Directory) and your (Staging Area)

# -------------------------------------------
# What am I about to commit?
git diff --staged
git diff --cached
# Shows Differences between your
# (Staging Area) and your (Last Commit)

# -------------------------------------------
# Branch vs. Branch
git diff main feature-api
# Shows Every difference between two branches

# ==================================================
# *** Reading the Output (The Colors) ***
# When you run a diff in your terminal,
# Git uses a specific format called a Unified Diff:
# -------------------------------------------
#### Red lines (-):
# Code that was removed or changed.
# -------------------------------------------
#### Green lines (+):
# Code that was added
# or is the new version of a changed line.
# -------------------------------------------
#### White/Gray lines:
# The "Context." Git shows 3 lines above
# and below your change
# so you know where you are in the file.
# -------------------------------------------
#### @@ -12,8 +12,9 @@:
# This is the "Hunk Header."
# It tells you the line numbers
# (Line 12 in the old file vs. Line 12 in the new file).

# ==================================================
# *** 3. Useful Pro Flags ***
# Since backend files can get long,
# use these flags to filter the noise:
# -------------------------------------------
--stat
# Shows a summary
# (which files changed and how many lines)
# instead of the full code.
# -------------------------------------------
--color-words
# Highlights only the specific words that changed
# within a line (great for typos).
# -------------------------------------------
-w
# Ignore whitespace.
# If you just reformatted your code with Prettier,
# this hides the spacing changes so you only see logic changes.
# -------------------------------------------
-- [filename]
# Only show the diff for one specific file.
