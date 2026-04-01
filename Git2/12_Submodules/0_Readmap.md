# Roadmap

Think of a Submodule as a "Project within a Project."

It’s like having a folder in your students_courses_app
that is actually its own independent Git repository.

To make this "Professor-Nabil" level easy,
we will break this down into a logical roadmap.
We won't touch the terminal yet;
first, we agree on the path.

---

## 🗺️ The Roadmap to Mastering Submodules

### Phase 1: The "Mental Model" (The Why & What)

Before typing commands,
we need to understand the "Pointer" concept.
We'll learn why a Submodule isn't just a regular folder
and how Git treats it like a specific "commit ID"
rather than a collection of files.

### Phase 2: The "Creation" (Adding a Submodule)

We will learn how to take an existing repository
(like a shared "Utility Library" or a "UI Component Kit" your friend made)
and link it into your main project.

- Command: `git submodule add`

### Phase 3: The "Cloning" (Helping your Teammate)

If your frontend friend clones your project,
the submodule folder will be empty by default!
We will learn the "Magic Flag" to bring those files to life.

- Command: `git clone --recursive` or `git submodule update --init`

### Phase 4: The "Update" (Moving the Pointer)

What happens if the library inside the submodule gets a new update?
We'll learn how to "pull" changes inside the submodule
and "record" that new version in your main app.

### Phase 5: The "Workflow" (Editing inside a Submodule)

This is where most people get stuck.
We’ll learn how to make a change inside the submodule,
push it to its own repo,
and then update the main project.

### Phase 6: The "Danger Zone" (Removal & Troubleshooting)

How to properly delete a submodule without breaking your .git config,
and how to fix the "Detached HEAD"
state that submodules love to create.

---

## 🎯 Why are we doing this for your Student App?

Imagine you create a set of TypeScript Interfaces
(the shapes of your Student and Course objects)
that both the Backend (you) and the Frontend (your friend) need to use.

- Instead of copy-pasting the code,
  you put those interfaces in a separate repo called student-types.

- You both add student-types as a Submodule.

- Now, when you change a type, you both get the update!
