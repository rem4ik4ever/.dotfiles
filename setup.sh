#!/bin/bash
set -e

DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"

# Install homebrew if missing
if ! command -v brew &> /dev/null; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Install packages
brew bundle --file="$DOTFILES_DIR/packages/Brewfile"

# Create parent directories (stow won't create these)
mkdir -p ~/.config ~/.claude

# Stow dotfiles
stow --adopt -d "$DOTFILES_DIR" -t ~ home

echo "Done! Run 'nvim' to install plugins."
