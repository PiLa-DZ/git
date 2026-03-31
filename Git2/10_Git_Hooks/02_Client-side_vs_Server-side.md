# Client-side vs. Server-side Hooks

Client-side hooks: Run on your local machine before committing changes.
Server-side hooks: Run on the remote server when you push changes.

## The main difference is where the script executes and who it affects

| Feature     | Client-side Hooks                 | Server-side Hooks                      |
| ----------- | --------------------------------- | -------------------------------------- |
| Location    | Your local machine (.git/hooks).  | The remote server (GitHub/GitLab).     |
| Trigger     | Local actions (Commit, Checkout). | Network actions (Push, Receive).       |
| Use Case    | Linting, formatting, spell-check. | Enforcing branch policies, deployment. |
| Bypassable? | Yes (using --no-verify).          | No (forced by the server).             |
