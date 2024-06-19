local opts = { noremap = true, silent = true }

-- NeoTree
vim.keymap.set("n", "<leader>m", ":NvimTreeFocus<CR>", opts) -- Focus on NvimTree
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", opts) -- Toggle NvimTree visibility

-- Window Management
vim.keymap.set("n", "<leader>sv", ":vsplit<CR>", opts) -- Split Vertically
vim.keymap.set("n", "<leader>sh", ":split<CR>", opts) -- Split Horizontally

-- Resize tmux window
vim.keymap.set("n", "<C-Up>", ":resize +2<CR>", opts) -- Resize tmux window up
vim.keymap.set("n", "<C-Down>", ":resize -2<CR>", opts) -- Resize tmux window down
vim.keymap.set("n", "<C-Left>", ":vertical resize +2<CR>", opts) -- Resize tmux window left
vim.keymap.set("n", "<C-Right>", ":vertical resize -2<CR>", opts) -- Resize tmux window right
