# Phase 0, Lesson 03: GPU Setup & Cloud

## Learner summary

A GPU can perform many calculations at the same time. It has its own memory, called VRAM.

VRAM is separate from system RAM. Its capacity limits the model and batch size that fit on the GPU; it is not necessarily larger than system RAM.

## Cheat sheet

| Goal | Command or idea | What it tells you |
|---|---|---|
| Check NVIDIA GPU status | `nvidia-smi` | Shows detected GPU, utilization, memory use, temperature, and processes |
| Check whether PyTorch can use CUDA | `torch.cuda.is_available()` | Returns `True` when CUDA is available to PyTorch |
| Choose an available device | `torch.device("cuda" if torch.cuda.is_available() else "cpu")` | Uses CUDA when available, otherwise CPU |
| Move tensors to GPU | `tensor.to("cuda")` | Copies tensor data from CPU memory to GPU memory |
| Time GPU work | `torch.cuda.synchronize()` | Waits for queued GPU operations to finish before reading the timer |
| Estimate fp16 parameter capacity | VRAM bytes ÷ 2 | Rough estimate because fp16 parameters use 2 bytes each |

For example, 24 GB is roughly 24 billion bytes; dividing by 2 gives a rough upper bound of 12 billion fp16 parameters. Training needs additional VRAM for activations, gradients, and other state, so the practical model size is lower. The first GPU run can include setup overhead; compare later runs. Google Colab is a convenient option for quick experiments without a local GPU.

## Review focus

- `nvidia-smi` is the command line tool for checking NVIDIA GPU status.
- GPU operations are asynchronous. Synchronize before stopping a timer so the measurement includes completed GPU work.
- For a rough fp16 estimate, convert GB to bytes, then divide by 2 bytes per parameter.
