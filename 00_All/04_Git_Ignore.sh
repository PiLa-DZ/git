# ======================================================
# Gitignore
touch .gitignore
echo "node_modules/" >>.gitignore
echo ".env" >>.gitignore
git rm --cached filename # if you ingnore file already committed it
