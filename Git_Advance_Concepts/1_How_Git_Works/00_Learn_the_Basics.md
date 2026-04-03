# Learn the Basics

## What is Version Control?

Version control (VCS) is a system that manages and tracks changes to files over time,
allowing multiple people to collaborate on a project while maintaining a history of all modifications.

## Why use Version Control?

It allows multiple developers to work on the same codebase simultaneously
without overwriting each other's work,

providing a clear record of who made changes and why.

## Git vs Other VCS

| Feature        | Git                                        | SVN (Centralized)        | Mercurial (DVCS)           |
| -------------- | ------------------------------------------ | ------------------------ | -------------------------- |
| Speed          | Extremely Fast (most tasks are local).     | Slow (requires network). | Fast.                      |
| Branching      | Cheap & Instant.                           | Expensive and messy.     | "Good, but less flexible." |
| Integrity      | Uses SHA-1 hashes (impossible to corrupt). | Can be corrupted easily. | High integrity.            |
| Learning Curve | "High (Steep, but worth it)."              | Low (Simple).            | Medium (Very logical).     |
| Market Share   | ~90%+                                      | Declining.               | Niche / Legacy.            |

## Installing Git Locally

- Arch Linux:

```bash
sudo pacman -S git
```
