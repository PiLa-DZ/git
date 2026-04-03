# ===========================================================================
# *** Using SSH (Secure Shell) is the "Pro" way to interact with GitHub ***
# --------------------------------------------------------------------
# 1. Generating your SSH Key
ssh-keygen -t ed25519 -C "your_email@example.com"

# --------------------------------------------------------------------
# 2. Adding the Key to the SSH Agent
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519

# --------------------------------------------------------------------
# 3. Giving the "Public" Key to GitHub
cat ~/.ssh/id_ed25519.pub
## 1. Copy that long string starting with ssh-ed25519.
## 2. Go to GitHub --> Settings --> SSH and GPG keys --> New SSH Key.
## 3. Give it a name (like "Arch Laptop") and paste the key.

# --------------------------------------------------------------------
# 4. Testing the Connection
ssh -T git@github.com

# --------------------------------------------------------------------
# 5. Switching your Project from HTTPS to SSH
git remote -v
# If it starts with https://, run the next command
git remote set-url origin git@github.com:USER_NAME/REPO_NAME.git
