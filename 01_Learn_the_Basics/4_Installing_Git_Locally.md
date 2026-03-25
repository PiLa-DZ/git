# Installing Git Locally

---

## 1. Linux (The Native Home)

On Linux,
Git is usually pre-installed or available in the official repositories.

- Arch Linux:

```bash
sudo pacman -S git
```

- Ubuntu/Debian:

```bash
sudo apt update && sudo apt install git
```

- Fedora:

```bash
sudo dnf install git
```

---

## 2. Windows (The "Git Bash" Way)

Windows doesn't have a native Unix-like terminal,
so Git provides one for you.

1. Download: Go to git-scm.com.

2. Installer: Run the .exe.

3. Crucial Step:
   When it asks about "Adjusting your PATH environment,"
   choose "Git from the command line and also from 3rd-party software."

4. The Result:
   You get Git Bash,
   a terminal that emulates Linux on Windows,
   allowing you to use commands like ls, cd, and ssh just like on Arch.

---

## 3. macOS (The "Xcode" Way)

Apple makes it very easy to install Git via their developer tools.

- Method A (Easiest):
  Open your terminal and type

  ```bash
  git --version
  ```

  If it’s not there,
  a popup will ask if you want to install Xcode Command Line Tools.
  Click install.

- Method B (Homebrew):
  If you use the Homebrew package manager
  (highly recommended for Mac devs):

  ```bash
  brew install git
  ```

---

## 4. Verification

Regardless of the OS,
the way to check if you were successful is the same.
Open your terminal (or Git Bash) and run:

```bash
git --version
# Should output: git version 2.x.x
```

---

## 5. The "First-Time" Configuration

This is the most important step.
Git needs to know "Who" is making the changes so it can put your name on the commits.
If you don't do this, your GitHub profile won't show your green activity squares!

Run these two commands in your terminal:

```bash
git config --global user.name "Your Name"
git config --global user.email "your.email@example.com"
```

> [!TIP]
> Arch Tip:
> You can see all your settings by running
> `git config --list`
> This data is stored in a hidden file in your home directory called
> `~/.gitconfig`
