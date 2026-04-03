# The Workflow (config file)

- creating a `~/.ssh/config`

```bash
mkdir -p ~/.ssh
nvim ~/.ssh/config
```

- Add this:

```text
Host github.com
  AddKeysToAgent yes
  IdentityFile ~/.ssh/id_ed25519
```
