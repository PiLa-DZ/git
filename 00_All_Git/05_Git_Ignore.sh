# ======================================================
# Gitignore
touch .gitignore
echo "node_modules/" >>.gitignore
echo ".env" >>.gitignore
git rm --cached filename # if you ingnore file already committed it

# ======================================================
# *** The patterns you want to ignore ***

node_modules/ # Dependency directory

.env    # Environment variables (Secrets!)
*.local # Environment variables (Secrets!)

npm-debug.log* # Logs
logs/          # Logs

dist/ # Build output

filename.txt     # Ignore one specific file
folder/          # Ignore an entire directory and everything in it
*.log            # Ignore any file ending in .log
!important.log   # The Negation—ignore all logs except this one
temp/**/test.txt # Ignore test.txt in any subdirectory of temp
