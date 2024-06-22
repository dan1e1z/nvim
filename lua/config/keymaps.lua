local opts = { noremap = true, silent = true }

-- Window Management
vim.keymap.set("n", "<leader>sv", ":vsplit<CR>", opts) -- Split Vertically
vim.keymap.set("n", "<leader>sh", ":split<CR>", opts) -- Split Horizontally
