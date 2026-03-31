# Implementation Pro-Tip: Husky

- On Arch,
  you can write these scripts manually in .git/hooks,
  but in the Node.js ecosystem,
  most developers use a tool called Husky.

  ```bash
  # 1. Install:
  npx husky-init && npm install

  # 2. Add a hook:
  npx husky add .husky/pre-commit "npm run lint"
  ```

- This creates a .husky folder that you can commit to Git,
  ensuring your frontend friend follows the same rules as you.
