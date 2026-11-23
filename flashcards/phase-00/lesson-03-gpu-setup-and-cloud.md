# Flashcards: Phase 0, Lesson 03

1. **Q:** What does `nvidia-smi` show?  
   **A:** NVIDIA GPU status, including its name, utilization, memory use, temperature, and running processes.

2. **Q:** What does `torch.cuda.is_available()` check?  
   **A:** Whether PyTorch can access CUDA for GPU computation.

3. **Q:** Why call `torch.cuda.synchronize()` when timing GPU work?  
   **A:** GPU operations are asynchronous; synchronization waits for them to finish so the timer measures the completed work.

4. **Q:** How many bytes does one fp16 parameter roughly use?  
   **A:** 2 bytes.

5. **Q:** Using the rough fp16 rule, what is the upper-bound estimate for 24 GB of VRAM?  
   **A:** About 12 billion parameters, before accounting for activations, gradients, and other memory use.
