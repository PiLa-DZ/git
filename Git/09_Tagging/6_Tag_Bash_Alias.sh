## 🛠️ Essential Aliases for your PDE
# --- Git Tagging Aliases ---

# List tags with their messages
alias tagList="git tag -n"

# Create an annotated tag (Usage: gtag v1.0 "Message")
gtag() {
  git tag -a "$1" -m "$2"
}

# Push all tags to origin
alias pushTags="git push origin --tags"
