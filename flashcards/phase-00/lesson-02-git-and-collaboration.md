# Flashcards: Phase 0, Lesson 02

1. **Q:** What does `git add` do?  
   **A:** Stages selected changes for the next commit.

2. **Q:** What does `git commit` do, and where is the commit saved?  
   **A:** Saves a snapshot of staged changes in the local repository.

3. **Q:** What does `git push origin main` do?  
   **A:** Uploads commits from local `main` to the remote named `origin`.

4. **Q:** Why create a branch for an experiment, and how do you merge it into `main`?  
   **A:** A branch isolates the experiment. Switch to `main`, then run `git merge <branch-name>`.

5. **Q:** What should a fork and `.gitignore` do for your course work?  
   **A:** A fork is your own remote copy, separate from the original course repository. `.gitignore` patterns such as `*.pt`, `*.pth`, and `*.safetensors` keep new checkpoint files out of Git tracking.
