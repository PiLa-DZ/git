# Git vs Other VCS

---

## 1. Centralized VCS (The "Old School")

Tools like Subversion (SVN) and Perforce dominated the 2000s.

- The Model:
  There is one "Source of Truth" server.
  To do anything (see history, commit a change, create a branch),
  you must be connected to that server.

- The Risk:
  If the central server goes down or the network is cut, no one can work.
  If the server’s hard drive fails and there’s no backup,
  you lose the entire history of the project.

---

## 2. Distributed VCS (The Git Revolution)

Git (created by Linus Torvalds for the Linux Kernel)
and Mercurial (Hg) changed the game.

- The Model:
  Every developer who "clones" a repository
  gets a full copy of the entire project history.

- The Benefit:
  You can commit, branch, and view logs
  while sitting in a cafe with no Wi-Fi.
  The "Server" (like GitHub) is just another peer in the network.

---

## 3. Git vs. The Competition

Here is how Git stacks up against its historical and modern rivals:

| Feature        | Git                                        | SVN (Centralized)        | Mercurial (DVCS)           |
| -------------- | ------------------------------------------ | ------------------------ | -------------------------- |
| Speed          | Extremely Fast (most tasks are local).     | Slow (requires network). | Fast.                      |
| Branching      | Cheap & Instant.                           | Expensive and messy.     | "Good, but less flexible." |
| Integrity      | Uses SHA-1 hashes (impossible to corrupt). | Can be corrupted easily. | High integrity.            |
| Learning Curve | "High (Steep, but worth it)."              | Low (Simple).            | Medium (Very logical).     |
| Market Share   | ~90%+                                      | Declining.               | Niche / Legacy.            |

---

## 4. Why Git Won

Git didn't win just because it was distributed;
it won because of its Data Model.

1. Snapshots, not Differences:
   Older VCS tracked "deltas" (what changed between Version A and B).
   Git takes a "Snapshot" of what the whole file looks like right now.
   This makes switching between branches nearly instantaneous.

2. Branching is a First-Class Citizen:
   In SVN, creating a branch meant copying the whole project folder.
   In Git, a branch is just a tiny 40-character file that points to a commit.

3. The Linux Pedigree:
   Since it was built to manage the Linux Kernel
   (the most complex open-source project in the world),
   it was battle-tested for performance from day one.

---

## Summary

| Term         | Git's Approach               | Other VCS Approach        |
| ------------ | ---------------------------- | ------------------------- |
| Storage      | Content-addressable (SHA-1). | File-path based.          |
| Offline Work | Fully supported.             | Not possible.             |
| Merging      | Automated and intelligent.   | Often manual and painful. |
