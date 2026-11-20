# Phase 0, Lesson 02: Git & Collaboration

## Summary

Git records project changes so you can inspect history and restore earlier work. The everyday workflow is `git add` to select changes, `git commit` to save a snapshot in the local repository, and `git push` to upload commits to a remote. Branches let you develop an experiment separately; merge its changes into `main` when ready. Use `.gitignore` patterns to keep new large model checkpoints out of Git. A fork is a copy of a repository that you control; it is separate from the original course repository.

## Cheat sheet

| Goal | Command or file | What it does |
|---|---|---|
| Check changed files | `git status` | Shows staged, unstaged, and untracked changes |
| Stage a file | `git add model.py` | Selects the file's current changes for the next commit |
| Save a snapshot | `git commit -m "Describe change"` | Records staged changes in local history |
| Upload commits | `git push origin main` | Sends local `main` commits to the remote named `origin` |
| Create and switch to a branch | `git checkout -b experiment/new-optimizer` | Starts a separate line of work |
| Merge into main | `git checkout main` then `git merge experiment/new-optimizer` | Applies the experiment branch's changes to `main` |
| View compact history | `git log --oneline` | Lists commit IDs and messages, one per line |
| Ignore checkpoint files | `.gitignore` with `*.pt`, `*.pth`, `*.safetensors` | Excludes matching untracked files from Git status and future adds |

Remember: `.gitignore` does not automatically stop tracking a file already committed. `origin` usually points to your fork; the original course repository is a separate upstream source.
