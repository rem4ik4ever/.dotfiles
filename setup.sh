#!/bin/bash
set -e

# Install homebrew if missing
if ! command -v brew &> /dev/null; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Install dependencies
brew install neovim fzf go tree-sitter tree-sitter-cli

# Create symlinks - nvim
mkdir -p ~/.config
ln -sf "$(pwd)/nvim" ~/.config/nvim

# Create symlinks - claude
mkdir -p ~/.claude
ln -sf "$(pwd)/claude/CLAUDE.md" ~/.claude/CLAUDE.md
ln -sf "$(pwd)/claude/skills" ~/.claude/skills
ln -sf "$(pwd)/claude/commands" ~/.claude/commands

echo "Done! Run 'nvim' to install plugins."
