# 4. Checking Out Tags

If you want to view the code exactly as it was at **_v1.0.0_**,
you can check it out.

- Command: `git checkout v1.0.0`

> [!WARNING]
> This puts you in a **_Detached HEAD_** state.
> If you want to fix a bug in that old version,
> you should create a **_new branch_** from the **_tag_**:
> `git checkout -b fix-v1-bug v1.0.0`
