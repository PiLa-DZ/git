# ===========================================================
# *** Undo (From Staging back to Working Dir) ***
git restore --staged file_name
# It pulls the file out of the "Ready to Commit" bucket
# and puts it back into the "Still Editing" bucket

# ===========================================================
# *** Recover (From Commit back to Working Dir) ***
git restore file_name # One file
git restore .         # Everything
# It reaches into the Git database,
# grabs the last saved version of that file,
# and overwrites your current "broken" version.
