# Advanced Git topics

- Git Reflog
- Git Bisect
  Git Bisect is an interactive tool used to identify which commit in your project's history introduced a bug or regression. You start by identifying two commits: one where the issue isn't present (the "good" commit) and another where it is (the "bad" commit). Then, run git bisect start, followed by git bisect good for the good commit and git bisect bad for the bad commit. Git Bisect will guide you through a binary search process, asking you to test the midpoint of your current range until it identifies the exact commit that introduced the bug or regression.
- Git Worktree
- Git Attributes
  `Git attributes are settings stored in the .gitattributes file, controlling how Git handles files in your repository. They can influence filtering (e.g., ignoring specific files), conversion (formatting or transforming files during Git operations), and formatting (applying consistent styles). These settings can be applied to specific file types (like *.txt) or filter files based on content patterns. Attributes also define smudge patterns (highlighting differences) and ignore patterns, helping maintain a clean repository by automatically applying intended settings for certain file types.`
- Git LFS
  `Git Large File Storage (LFS) is an extension that helps manage large files by tracking metadata, not storing entire files. It allows storing and tracking binary assets like images, videos, audio files separately from your regular Git repository. By storing only metadata in your Git repository, you improve clone and push times, reducing storage usage. This approach is particularly useful for media repositories, large dataset storage, and binary asset management in game development. Note that Git LFS requires a separate server or storage system to store actual file content.`
