# eslint module for nodejs

Just for testing your `pre-commit`

```bash
# 1. Install it
npm install eslint --save-dev

# 2. Initialize it
# Run the initialization wizard.
# It will ask you questions about your project (Node.js, TypeScript, etc.):
npx eslint --init

# 3. Run it
# You can check your files manually by running:
npx eslint .
```

Or, add a script to your package.json
so you can just type npm run lint:

```json
"scripts": {
  "lint": "eslint ."
}
```

## The Final Piece: lint-staged

As a backend dev,
you’ll notice that `npm run lint` gets slower
as your project grows.
If you change 1 file, why lint all 100 files?

## Integration with Neovim

Since you use LazyVim,
you don't even need to run the command manually.
LazyVim uses a plugin called `null-ls` or `none-ls`
(and Mason) to show these errors live as you type.

- When you see a red or yellow underline in a .ts file,
  that is your Linter talking to you.

- You can often "auto-fix" minor issues (like spacing)
  by running :LazyFormat or having "format on save" enabled.
