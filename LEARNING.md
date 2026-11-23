** ENVIRONMENT
All the environment check passed 
 
 Git   
 Python 3.10+
 Node.js
 Rust (rustc)
 Cargo


**PROGRESS LOG
phase 0, 01 Dev Environment -----------done
phase 0, 02 Git & Collaboration (revisit) -----------done; quiz 3/3
Note: I explained the add → commit → push workflow, branches, merging, and `.gitignore`. Revisit the distinction between my fork (`origin`) and the original course repository (`upstream`). Stopped after completing the lesson and quiz.
phase 0, 03 GPU Setup & Cloud -----------done; quiz 1/3
Learner summary: A GPU can perform many calculations at the same time. It has its own memory, called VRAM. Review: `nvidia-smi` checks NVIDIA GPU status; `torch.cuda.synchronize()` waits for GPU work before timing.


**Additional note
-Rust and NOde were not installed at first, so  i had to install them (rustup and nvm)
-Anytime the systme goes off/restarts, i will have to resinstall rust and Node before i can proceed with any session so inorder to overcome this challenge, i created the "setup file" that once run, it will install rust and Node

**REVIEW QUEUE
- Phase 0, Lesson 03: GPU Setup & Cloud — review `nvidia-smi`, asynchronous GPU operations and `torch.cuda.synchronize()`, and the fp16 VRAM estimate.

