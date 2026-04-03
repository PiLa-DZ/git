# commitlint

---

## 1. What is commitlint?

It is a Node.js tool
that checks if your commit messages meet a specific configuration.
By default, most people use the Conventional Config,
which requires the `type(scope): description` format we discussed.

---

## 2. Installation & Setup

Since you are on Arch,
you’ll do this via your terminal inside your project folder.

### Step 1: Install commitlint and the config

```bash
npm install --save-dev @commitlint/config-conventional @commitlint/cli
```

### Step 2: Create the Configuration File

You need to tell commitlint which rules to follow.
Create a file named `commitlint.config.js` in your root directory:

```bash
echo "export default { extends: ['@commitlint/config-conventional'] };" > commitlint.config.js
# NOTE: If you are using CommonJS,
# use module.exports = { extends: ['@commitlint/config-conventional'] }; instead.
```

---

## 3. Connecting Husky to commitlint

Now, we need to tell `Husky` to run `commitlint` whenever you try to commit.

### Step 1: Add the Hook

Run this command to create (or overwrite)
the commit-msg hook in your .husky folder:

```bash
npx husky add .husky/commit-msg  'npx --no-install commitlint --edit "$1"'
```

### Step 2: How it works

When you run git commit,
Git creates a temporary file containing your message.

1. Husky triggers the `commit-msg` hook.

2. The hook passes the path of that temporary file ($1) to `commitlint`.

3. `commitlint` reads the file.
   If it doesn't match the "Conventional" rules,
   it exits with an error and stops the commit.

---

## 4. Testing it out

### The "Rejected" Commit

```bash
git commit -m "added some node stuff"
```

Result: ❌ FAILED. commitlint will tell you that the subject is missing a type (like feat or fix).

### The "Professor" Commit

```bash
git commit -m "feat(api): add student registration endpoint"
```

Result: ✅ PASSED. Your history is now clean and searchable.

---

## 5. Why the "Conventional" Rules Matter

By using commitlint,
you unlock advanced professional workflows later on:

- Automated Changelogs:
  Tools can read your feat and fix commits
  to automatically generate a CHANGELOG.md.

- Semantic Versioning:
  You can automate version bumps
  (jumping from v1.0.0 to v1.1.0 automatically because you had feat commits).
