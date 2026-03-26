# Handling Conflicts

---

## 1. How a Conflict Looks (The "Markers")

When a conflict occurs,
Git pauses the operation
and writes special "Conflict Markers" directly into your source code.

If you open the file in Neovim,
it will look like this:

```js
<<<<<<< HEAD
const port = 3000; // Your version (on the current branch)
=======
const port = 8080; // Their version (from the branch you are pulling in)
>>>>>>> feature-api
```

```bash
The Anatomy:

<<<<<<< HEAD: Everything below this is what you currently have.

=======: The divider between the two versions.

>>>>>>> [branch-name]: Everything above this is what's coming from the other branch.
```

---

## 2. Step-by-Step: Resolving in the Terminal

If you aren't using a GUI,
here is the standard manual workflow:

1. Identify the files:
   Run `git status`.
   Conflicted files will be labeled "both modified."

2. Open the file:
   Use your editor (Neovim/VS Code).

3. Make a choice:
   Delete the markers (<<<<, ====, >>>>)
   and edit the code to exactly how it should look
   (or keep both!).

4. Stage the fix:
   Tell Git the "surgery" is over:

```bash
git add filename
```

1. Finish the job:
   - If merging: `git commit`
   - If rebasing: `git rebase --continue`

---

## 3. Handling Conflicts in Lazygit (The Pro Way)

Lazygit makes this much less stressful.
You don't have to hunt for markers manually.

1. Enter the file:
   In the "Files" panel,
   highlight the red conflicted file and press `Enter`.

2. Pick a side:
   Use the arrow keys to highlight the top block (Your changes)
   or the bottom block (Their changes).

3. Confirm:
   Press `Space` to pick that version,
   or `b` to keep both.

4. Escape:
   Once all conflicts in the file are resolved, press `Esc`.
   Lazygit will automatically git add the file for you.

---

## 4. Conflict Strategies: "The Big Three"

Sometimes you don't want to pick line-by-line.
You just want to "win" the argument.

| Strategy | Command                      | Result                                                                           |
| -------- | ---------------------------- | -------------------------------------------------------------------------------- |
| Ours     | git checkout --ours <file>   | Keep your version and ignore theirs.                                             |
| Theirs   | git checkout --theirs <file> | Throw away your changes and take theirs.                                         |
| Abort    | git merge --abort            | The Panic Button. Cancels everything and returns to how it was before the merge. |
