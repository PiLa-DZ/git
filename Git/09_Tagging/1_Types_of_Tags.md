# 1. Types of Tags

There are two main types of tags in Git.
Think of one as a **_Sticky Note_**
and the other as a **_Signed Document_**

### Lightweight Tags

A simple pointer to a commit.
It’s just a name.

- Command: `git tag v1.0-lw`
- Best For: Quick internal markers or temporary labels.

### Annotated Tags (The Professional Standard)

These are stored as full objects in the Git database.
They include the tagger's **_(name, email, date, message)_**
They can even be **_GPG-signed_** for security (very common in the Arch Linux community).

- Command: `git tag -a v1.0.0 -m "Initial stable release of Student App"`
- Best For: Public releases and versions you intend to share with others.
