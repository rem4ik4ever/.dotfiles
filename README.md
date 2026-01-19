# Dotfiles

Personal config for nvim and claude.

## Quick Setup

```bash
git clone <repo> ~/.dotfiles
cd ~/.dotfiles
./setup.sh
```

## What's Included

```
.dotfiles/
├── setup.sh          # bootstrap script
├── nvim/             # neovim config (see nvim/README.md)
└── claude/           # claude code config
    ├── CLAUDE.md     # global instructions
    ├── commands/     # custom slash commands
    └── skills/       # custom skills
```

## Manual Setup

```bash
# nvim
ln -sf ~/.dotfiles/nvim ~/.config/nvim

# claude
ln -sf ~/.dotfiles/claude/CLAUDE.md ~/.claude/CLAUDE.md
ln -sf ~/.dotfiles/claude/skills ~/.claude/skills
ln -sf ~/.dotfiles/claude/commands ~/.claude/commands
```

## Dependencies

```bash
brew install neovim fzf go tree-sitter tree-sitter-cli
```
