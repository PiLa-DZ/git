# post-update --> Runs on the remote server after a push is completed

---

## 1. What is the post-update Hook?

While `post-checkout` happens on your machine,
`post-update` happens on the Remote Server
(the machine where your central repository lives).

- The Trigger:
  It runs after the server has successfully received
  a push and updated its references (branches).

- The Goal:
  To notify other services
  or prepare the server's environment for the new code.

- The Difference:
  It doesn't have access to your "Working Directory" (the actual files)
  because, on a server,
  Git usually exists as a "Bare" repository (just the .git folder data).

---

## 2. Why is it used?

Historically,
this hook was used to update the "server info"
so that older protocols (like HTTP) could see the new commits.
Today, in a professional backend environment, it’s used for:

1. Webhooks & Notifications:
   Telling a Discord bot or a Slack channel:
   "Nabil just pushed a new feature to the backend!"

2. Triggering CI/CD:
   Telling a build server (like Jenkins or GitHub Actions)
   to start testing the code.

3. Documentation Updates:
   If you host your own documentation site,
   this hook can trigger a
   re-build of the HTML pages from your Markdown files.

---

## 3. How it Works (The Script)

If you were hosting your own Git server on a VPS,
you would go into the hooks folder of that server's repo:

```bash
# On the server
nvim /srv/git/students_courses_app.git/hooks/post-update
```

A typical post-update script looks like this:

```bash
#!/bin/bash

echo "📢 Update received on the server! Triggering external services..."

# Example: Updating server info for older Git clients
git update-server-info

# Example: Pinging a deployment server
curl -X POST http://my-deploy-server.com/rebuild-api

exit 0
```

---

## 4. Why you won't use it much on GitHub

On GitHub,
you don't have direct access to the .git/hooks folder
on their servers (for security reasons).
Instead, GitHub replaced post-update
with something much more powerful: **_Webhooks and GitHub Actions_**.

> [!IMPORTANT]
> Webhooks and GitHub Actions

- GitHub Actions:
  Instead of a Bash script in a hidden folder,
  you use a .yml file in your repo.

- Webhooks:
  You use the GitHub UI (Settings -> Webhooks)
  to tell GitHub to send a "Ping" to your server whenever a push happens.
