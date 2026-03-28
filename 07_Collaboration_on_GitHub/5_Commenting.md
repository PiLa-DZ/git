# Commenting (Saved Replies, Mentions, Reactions)

---

## 1. Mentions (@user)

Mentions are the "Notification Bell" of GitHub.
When you type @ followed by a username,
that person receives an email
and a notification in their GitHub dashboard.

- Direct Attention:
  Use this in an Issue or PR to ask a specific question:
  "@friend, can you check if this Prisma schema matches your frontend types?"

- Team Mentions:
  If you have a GitHub Organization,
  you can mention an entire team
  (e.g., @my-org/backend-devs) to notify everyone at once.

- Quote Reply:
  On the web interface,
  you can highlight a piece of text in a comment
  and press r to automatically quote it and mention the author.

---

## 2. Saved Replies (The "Efficiency" Hack)

As a developer who loves a streamlined "Personal Development Environment" (PDE),
you'll appreciate Saved Replies.
These are templates for comments you find yourself typing over and over again.

### Common use cases for your app

- "Thanks for the PR! I'm running the tests on my Arch machine now and will get back to you."

- "Please provide a screenshot of the UI change so I can review the frontend logic."

### How to set them up

1. Go to your GitHub Settings --> Saved replies.
2. Add a title and the Markdown content.
3. To use:
   When commenting,
   click the "Saved replies" icon (or use the keyboard shortcut Ctrl + . on Linux)
   to insert your template instantly.

---

## 3. Reactions (The "Low-Noise" Feedback)

Sometimes a full comment like "I agree" or "Looks good"
just creates unnecessary notification noise for your teammates.
Reactions allow you to acknowledge a comment with an emoji.

- The Options:
  +1 (Agree), -1 (Disagree), 😄 (Laugh), 🎉 (Celebrate), ❤️ (Heart), and 👀 (Eyes).

- The "Eyes" Reaction:
  In a professional workflow,
  the 👀 emoji is often used to say,
  "I have seen this and I am currently looking into it."
  It’s a great way to communicate status without typing a word.

---

## 4. Reviewing vs. Commenting

On a Pull Request,
there is a big difference between a "Comment" and a "Review Comment":

- Single Comment:
  A standalone message at the bottom of the PR.

- Review Comment:
  A comment attached to a specific line of code.

- Suggestion:
  Inside a review comment,
  you can suggest a code change.
  Your friend can then click "Commit suggestion"
  to apply your fix directly from the browser!

---

## Summary

| Feature       | Best For...                       | Pro-Tip                                                    |
| ------------- | --------------------------------- | ---------------------------------------------------------- |
| Mentions      | Getting someone's attention.      | "Don't over-use; it can be ""noisy"" for busy developers." |
| Saved Replies | Repetitive feedback/instructions. | Use Markdown to include helpful links in your templates.   |
| Reactions     | Quick acknowledgement.            | Use 👀 to show you're actively working on a review.        |
| Comments      | Technical discussion.             | Use backticks (`code`) to make your logic readable.        |

---

## 6. Using the Terminal (gh CLI)

You don't need to leave your terminal to comment on your Arch setup:

```bash
# Add a comment to an issue
gh issue comment 12 --body "I've updated the database connection string."

# Add a comment to a PR
gh pr comment 5 --body "The tests passed on my local Arch setup."
```
