# | Alias Name | What it's for                                   |
# | ---------- | ----------------------------------------------- |
# | logGraph   | "Seeing the ""Tree"" of branches."              |
# | logStat    | Seeing which files changed (Summary).           |
# | logSearch  | Finding a specific word inside old code.        |
# | logFile    | Seeing the timeline of one specific file.       |
# | logUser    | Checking a specific person's work.              |
# | logToday   | Reminding yourself what you coded today.        |
# | logDetail  | "A beautiful, readable list of recent history." |

# 1. The "Big Picture" (logGraph)
# This is for when you need to see how your backend and your friend's frontend branches are interacting. It shows a colorized, branched tree.
alias logGraph="git log --graph --oneline --all --decorate"

# 2. The "Daily Report" (logStat)
# Use this when you want to see which files were changed in the last few commits without seeing every line of code. It gives you a summary of insertions and deletions.
alias logStat="git log --stat -n 5"

# 3. The "Deep Search" (logSearch)
# This is your Pickaxe. It searches the actual code content across history. Replace STRING with whatever you are looking fo
# Usage: logSearch "connectionString"
logSearch() {
  git log -S "$1" -p
}

# 4. The "File History" (logFile)
# When a specific file (like prisma/schema.prisma) is acting up, use this to see only the commits that touched it.
# Usage: logFile path/to/file
logFile() {
  git log --patch -- "$1"
}

# 5. The "Author Filter" (logUser)
# Perfect for checking what your "Tester" account or your friend did recently.
# Usage: logUser "Nabil"
logUser() {
  git log --author="$1" --oneline
}

# 6. The "Today's Work" (logToday)
# As a developer, sometimes you need to stand up at a meeting and say what you did. This shows everything since midnight.
alias logToday="git log --since='00:00:00' --oneline --author='$(git config user.name)'"

# 7. The "Detailed List" (logDetail)
# This is for when logGraph is too simple. it shows the hash, the relative time (e.g., "2 hours ago"), the author, and the message in a clean, colored format.
alias logDetail="git log --pretty=format:'%C(yellow)%h %C(cyan)%ad %C(green)%an%Creset: %s' --date=relative"
