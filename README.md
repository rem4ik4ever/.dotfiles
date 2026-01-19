# Dotfiles

Personal config for nvim and claude. Uses [GNU Stow](https://www.gnu.org/software/stow/) for symlink management.

## Quick Setup

```bash
git clone <repo> ~/.dotfiles
cd ~/.dotfiles
./setup.sh
```

## Structure

```
.dotfiles/
├── home/                 # stow root (maps to ~)
│   ├── .config/
│   │   └── nvim/         # neovim config
│   └── .claude/
│       ├── CLAUDE.md     # global instructions
│       ├── commands/     # custom slash commands
│       └── skills/       # custom skills
├── packages/
│   └── Brewfile          # homebrew packages
└── setup.sh              # bootstrap script
```

## Manual Setup

```bash
brew bundle --file=packages/Brewfile
stow -t ~ home
```

## Adding New Dotfiles

Place files in `home/` mirroring target location:
- `~/.config/foo` → `home/.config/foo`
- `~/.zshrc` → `home/.zshrc`

Then run `stow -t ~ home` to create symlinks.
