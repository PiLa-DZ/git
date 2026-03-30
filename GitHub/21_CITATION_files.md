# Documentation: CITATION_files --> CITATION.cff

As you scale your backend projects
and collaborate with other developers in the open-source community,

CITATION files (specifically the CITATION.cff format) ensure
that if someone uses your student management app
or your custom Node.js logic in their own work,
they give you proper credit.

For a developer on Arch Linux who values precision,
a CITATION file is the "metadata"
that tells the world exactly who authored the code
and how to reference it in papers,
articles, or other repositories.

---

## 1. What is a CITATION.cff?

The Citation File Format (CFF) is a human-readable
and machine-processable YAML file.
GitHub detects this file in your root directory
and automatically adds a "Cite this repository" button
to the sidebar of your project.

- Why use it?
  It prevents people from guessing your name
  or the project's release date.

- Standardized:
  It’s recognized by tools like Zotero, Mendeley, and GitHub itself.

---

## 2. The Structure (YAML)

Since you are familiar with configuration files
like .eslintrc or prisma.schema,
you’ll find the YAML syntax very straightforward.
Create a file named CITATION.cff in your root folder:

```yaml
cff-version: 1.2.0
message: "If you use this software, please cite it as below."
authors:
  - family-names: "YourLastName"
    given-names: "Nabil"
    orcid: "https://orcid.org/0000-0000-0000-0000" # Optional
title: "students_courses_app"
version: 1.0.0
date-released: 2026-03-28
url: "https://github.com/Nabil/students_courses_app"
```

---

## 3. Why it matters for Backend Devs

If you develop a unique encryption middleware
or a high-performance Prisma wrapper,
researchers or other developers
might want to credit your specific implementation.

- Academic Credit:
  If your friend uses your backend as part of a university project,
  they can cite your repo formally.

- Professional Visibility:
  It marks your project as "Production-Ready"
  and professionally maintained.

---

## 4. Integration with your "PDE" (Personal Development Environment)

Since you live in the terminal on Arch:

- Validation:
  You can use a CLI tool like cffconvert
  (available via pip or sometimes the AUR)
  to validate your file before pushing.

- Automation:
  You can set a GitHub Action
  to automatically update the date-released
  or version in your CITATION file
  whenever you create a new GitHub Release.

---

## Summary

| Field       | Description                                    | Requirement |
| ----------- | ---------------------------------------------- | ----------- |
| cff-version | The version of the CFF spec (usually 1.2.0).   | Required    |
| message     | Instructions for the user.                     | Required    |
| authors     | List of contributors (Family and Given names). | Required    |
| title       | The name of your software/repo.                | Required    |
| doi         | A Digital Object Identifier (if you have one). | Optional    |

---

## 6. Pro Tip: The DOI

If your project becomes very significant,
you can link your GitHub repo to Zenodo.
Every time you create a release,
Zenodo will issue a DOI (Digital Object Identifier),
which you can then add to your CITATION.cff.
This makes your code "archived" and permanently citable,
even if the repository moves.
