# Personal Access Token (PAT)

---

## 1. The Death of Passwords

> [!IMPORTANT]
> You cannot use your GitHub account password in the terminal anymore.
> GitHub disabled this in 2021 for security.
> If you try,
> Git will give you an error.
> You must use a Token.

---

## 2. Creating your "Key" (The Token)

Think of a PAT as a "temporary, revocable password"
just for your Arch terminal.

1. Go to GitHub Settings -> Developer Settings -> Personal Access Tokens -> Tokens (classic).

2. Click Generate new token (classic).

3. Note: Give it a name like "Arch-HTTPS-Access".

4. Expiration: Set it to 90 days (or "No expiration" if you are brave).

5. Scopes: Check the box for repo (this allows pushing/pulling code).

6. Generate: Copy that token immediately! You will never see it again.

---

## 3. Cloning with HTTPS

When you want to clone a repo,
you grab the HTTPS URL from GitHub:

```bash
git clone https://github.com/PiLa-DZ/students_courses_app.git
```

When it asks for your Username, type `PiLa-DZ`.
When it asks for your Password, PASTE THE `TOKEN` you just created.

---

## 5. Switching an Existing Repo from SSH to HTTPS

If you want to test how HTTPS feels in your current folder:

```bash
git remote set-url origin https://github.com/PiLa-DZ/students_courses_app.git
```
