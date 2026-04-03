# | Alias | Command   | Best For...                                |
# | ----- | --------- | ------------------------------------------ |
# | sf    | showFiles | "Quick ""Table of Contents"" of a commit." |
# | ss    | showStat  | Seeing the scale of the change.            |
# | sb    | showBody  | Focusing purely on code and the message.   |
# | sw    | showWord  | Precise variable/syntax change inspection. |
# | vold  | showOld   | Recovering/Reading old versions of a file. |

# 1. The "Brief" (showFiles)
# Use this when you want to see which files a commit affected without scrolling through hundreds of lines of code. It only lists the filenames.
alias showFiles="git show --name-only --oneline"

# 2. The "Impact" (showStat)
# This is the "Management" view. It shows you a histogram of how many lines were added or deleted in each file. Great for seeing if a commit was a small fix or a massive refactor.
alias showStat="git show --stat --oneline"

# 3. The "Content" (showBody)
# Sometimes the commit message is long, or there are many metadata headers. This alias skips the "who and when" and jumps straight to the Diff and the Message.
alias showBody="git show --format=%B -p"

# 4. The "Word-Diff" (showWord)
# In a Node.js project, if you just change one variable name in a long line, a normal git show highlights the whole line. This alias highlights only the specific word that changed.
alias showWord="git show --word-diff --color-words"

# 5. The "Time-Traveler" (showOld)
# As a backend dev, you often need to see the entire content of a file from a few commits ago (e.g., to copy-paste a function you deleted).
# Usage: showOld [hash] [file_path]
# This needs to be a function to handle the colon syntax
showOld() {
  git show "$1":"$2"
}

# 🛠️ Updated .bashrc Section
# Copy this block to keep your git show tools organized:
# --- Git Show Aliases ---
alias sf="git show --name-only --oneline"     # showFiles
alias ss="git show --stat --oneline"          # showStat
alias sb="git show --format=%B -p"            # showBody
alias sw="git show --word-diff --color-words" # showWord

# Function to see full file content at a specific hash
# Usage: vold a1b2c3d src/index.ts
vold() {
  git show "$1":"$2"
}
