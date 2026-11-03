#!/usr/bin/env bash
# Session setup for ai-engineering-journey.
# Run it with:  source setup.sh

echo "== Rust =="
if ! command -v rustc >/dev/null 2>&1; then
  curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
fi
. "$HOME/.cargo/env"

echo "== Node (via nvm) =="
export NVM_DIR="$HOME/.nvm"
if [ ! -s "$NVM_DIR/nvm.sh" ]; then
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash
fi
. "$NVM_DIR/nvm.sh"
nvm install --lts

echo "== Git identity =="
if [ -z "$(git config --global user.email)" ]; then
  printf "Your name for Git commits: "
  read GIT_NAME
  printf "Your GitHub email: "
  read GIT_EMAIL
  git config --global user.name "$GIT_NAME"
  git config --global user.email "$GIT_EMAIL"
fi

echo "== Course repo =="
if [ ! -d ../ai-engineering-from-scratch ]; then
  git clone https://github.com/rohitg00/ai-engineering-from-scratch.git ../ai-engineering-from-scratch
fi

echo "== Check =="
rustc --version
node --version
git --version
echo "Setup done."


**anytime you want to install rust and Node, run this command  source setup.sh**