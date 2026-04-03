# show --> Show me exactly what happened in this one specific spot.

# A. The "Latest Change" (Default)
git show

# B. Inspecting a Specific Commit
git show a1b2c3d

# C. Looking at a Specific File in a Commit
git show a1b2c3d:package.json
# Note: This doesn't show a diff; it shows the entire content of the file as it existed at that moment. It's like "cat" for the past.

# D. Comparing "Now" vs "Then"
git show a1b2c3d -- path/to/file.js
