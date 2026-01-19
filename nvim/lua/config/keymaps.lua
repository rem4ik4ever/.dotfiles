local map = vim.keymap.set

-- Better window navigation
map("n", "<C-h>", "<C-w>h", { desc = "Move to left window" })
map("n", "<C-j>", "<C-w>j", { desc = "Move to lower window" })
map("n", "<C-k>", "<C-w>k", { desc = "Move to upper window" })
map("n", "<C-l>", "<C-w>l", { desc = "Move to right window" })

-- Resize windows
map("n", "<C-Up>", ":resize +2<CR>", { silent = true })
map("n", "<C-Down>", ":resize -2<CR>", { silent = true })
map("n", "<C-Left>", ":vertical resize -2<CR>", { silent = true })
map("n", "<C-Right>", ":vertical resize +2<CR>", { silent = true })

-- Buffer navigation
map("n", "<S-l>", ":bnext<CR>", { silent = true, desc = "Next buffer" })
map("n", "<S-h>", ":bprevious<CR>", { silent = true, desc = "Previous buffer" })
map("n", "<leader>bd", ":bdelete<CR>", { silent = true, desc = "Delete buffer" })

-- Stay in indent mode
map("v", "<", "<gv", { desc = "Indent left" })
map("v", ">", ">gv", { desc = "Indent right" })

-- Move text up and down
map("v", "J", ":m '>+1<CR>gv=gv", { silent = true, desc = "Move text down" })
map("v", "K", ":m '<-2<CR>gv=gv", { silent = true, desc = "Move text up" })

-- Clear search highlights
map("n", "<Esc>", ":nohlsearch<CR>", { silent = true })

-- Better paste (don't yank replaced text)
map("v", "p", '"_dP', { desc = "Paste without yanking" })

-- Save file
map("n", "<leader>w", ":w<CR>", { silent = true, desc = "Save file" })

-- Toggle line wrap
map("n", "<leader>uw", ":set wrap!<CR>", { silent = true, desc = "Toggle line wrap" })

-- Splits
map("n", "<C-\\>", ":vsplit<CR>", { silent = true, desc = "Vertical split" })
map("n", "<C-M-\\>", ":split<CR>", { silent = true, desc = "Horizontal split" })
map("n", "<leader>q", ":q<CR>", { silent = true, desc = "Quit" })
