local opts = { noremap = true, silent = true }

-- Indenting
vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", ">", ">gv", opts)

-- Window Management
vim.keymap.set("n", "<leader>sv", ":vsplit<CR>", opts) -- Split Vertically
vim.keymap.set("n", "<leader>sh", ":split<CR>", opts) -- Split Horizontally

-- Line and Block Movement
-- vim.keymap.set("n", "<C-j>", "<cmd>m .+1<cr>==")
-- vim.keymap.set("n", "<C-k>", "<cmd>m .-2<cr>==")
-- vim.keymap.set("v", "<C-j>", ":m '>+1<cr>gv=gv")
-- vim.keymap.set("v", "<C-k>", ":m '<-2<cr>gv=gv")
