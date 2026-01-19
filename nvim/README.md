# Neovim Config

Modern nvim setup with lazy.nvim for TS/JS, Python, Go, Rust, Ruby.

## Setup

```bash
# install deps
brew install neovim fzf go tree-sitter tree-sitter-cli

# symlink
ln -sf ~/.dotfiles/nvim ~/.config/nvim

# open nvim (plugins auto-install)
nvim
```

## Keybindings

Leader = `Space`

### Files
| Key | Action |
|-----|--------|
| `Ctrl+p` | Find files |
| `<leader>ff` | Find files |
| `<leader>fg` | Live grep |
| `<leader>fb` | Buffers |
| `<leader>fr` | Recent files |
| `<leader>e` | Toggle file tree |

### Navigation
| Key | Action |
|-----|--------|
| `Ctrl+h/j/k/l` | Move between splits |
| `Shift+h` | Previous buffer |
| `Shift+l` | Next buffer |
| `<leader>bd` | Delete buffer |

### Splits
| Key | Action |
|-----|--------|
| `Ctrl+\` | Vertical split |
| `Ctrl+Option+\` | Horizontal split |
| `Ctrl+Arrow` | Resize split |

### LSP
| Key | Action |
|-----|--------|
| `gd` | Go to definition |
| `gr` | Find references |
| `gD` | Go to declaration |
| `gI` | Go to implementation |
| `K` | Hover docs |
| `<leader>ca` | Code actions |
| `<leader>rn` | Rename symbol |
| `<leader>d` | Show diagnostic |
| `[d` / `]d` | Prev/next diagnostic |

### Completion
| Key | Action |
|-----|--------|
| `Tab` | Next suggestion |
| `Shift+Tab` | Previous suggestion |
| `Enter` | Confirm |
| `Ctrl+Space` | Trigger completion |

### Git (gitsigns)
| Key | Action |
|-----|--------|
| `]c` / `[c` | Next/prev hunk |
| `<leader>hs` | Stage hunk |
| `<leader>hr` | Reset hunk |
| `<leader>hp` | Preview hunk |
| `<leader>hb` | Blame line |

### Other
| Key | Action |
|-----|--------|
| `<leader>w` | Save |
| `<leader>q` | Quit |
| `<leader>uw` | Toggle line wrap |

## Plugins

- **lazy.nvim** - plugin manager
- **fzf-lua** - fuzzy finder
- **neo-tree** - file explorer
- **nvim-lspconfig + mason** - LSP
- **nvim-cmp** - completion
- **nvim-treesitter** - syntax highlighting
- **gitsigns** - git indicators
- **lualine** - status line
- **catppuccin** - theme

## LSP Servers (auto-installed)

- ts_ls (TypeScript/JavaScript)
- pyright (Python)
- gopls (Go)
- rust_analyzer (Rust)
- solargraph (Ruby)
- lua_ls (Lua)
