#!/bin/bash

# Define the path for the global ignore file
IGNORE_FILE="$HOME/.gitignore_global"

echo "Creating global gitignore at $IGNORE_FILE..."

# Start writing the file
cat <<EOF >"$IGNORE_FILE"
# --- OS Specific ---
.DS_Store
.AppleDouble
.LSOverride
Thumbs.db
desktop.ini

# --- Arch Linux / System ---
*~
.fuse_hidden*
.directory
.Trash-*
.nfs*

# --- Node.js / Backend ---
node_modules/
jspm_packages/
.npm
.eslintcache
.stylelintcache
*.log
logs
*.gz
pnpm-debug.log*

# --- Environment / Secrets ---
.env
.env.local
.env.development.local
.env.test.local
.env.production.local
*.pem
*.key

# --- Neovim / Editors ---
*.swp
*.swo
Session.vim
.netrwhist
undo/
.dirlocals.vim

# --- Databases ---
*.db
*.sqlite
/prisma/migrations/
EOF

# Tell Git to use this file globally
git config --global core.excludesfile "$IGNORE_FILE"

echo "✅ Success! Git is now configured to use $IGNORE_FILE."
echo "You can verify this by running: git config --get core.excludesfile"
