local map = vim.keymap.set

-- Prevents 'x' from overwriting the clipboard
map("n", "x", '"_x', { desc = "Delete character without affecting clipboard" })

-- Redo the last undone change
map("n", "U", "<C-r>", { desc = "Redo last undo" })

-- Indenting
map("v", "<", "<gv", { desc = "Indent left and reselect" })
map("v", ">", ">gv", { desc = "Indent right and reselect" })

-- Window Management
map("n", "<leader>|", ":vsplit<CR>", { desc = "Split window vertically" })
map("n", "<leader>-", ":split<CR>", { desc = "Split window horizontally" })

-- Center buffer while navigating
map("n", "<C-u>", "<C-u>zz", { desc = "Scroll up and centre" })
map("n", "<C-d>", "<C-d>zz", { desc = "Scroll down and centre" })
map("n", "{", "{zz", { desc = "Jump paragraph up and centre" })
map("n", "}", "}zz", { desc = "Jump paragraph down and centre" })
map("n", "N", "Nzz", { desc = "Repeat search (backwards) and centre" })
map("n", "n", "nzz", { desc = "Repeat search and centre" })
map("n", "G", "Gzz", { desc = "Go to end of file and centre" })
map("n", "gg", "ggzz", { desc = "Go to beginning of file and centre" })
map("n", "gd", "gdzz", { desc = "Go to definition and centre" })
map("n", "<C-i>", "<C-i>zz", { desc = "Go to newer jump and centre" })
map("n", "<C-o>", "<C-o>zz", { desc = "Go to older jump and centre" })
map("n", "%", "%zz", { desc = "Jump to matching character and centre" })
map("n", "*", "*zz", { desc = "Search next occurrence and centre" })
map("n", "#", "#zz", { desc = "Search previous occurrence and centre" })

-- Line and Block Movement
-- map("n", "<C-j>", "<cmd>m .+1<CR>==", { desc = "Move line down" })
-- map("n", "<C-k>", "<cmd>m .-2<CR>==", { desc = "Move line up" })
-- map("v", "<C-j>", ":m '>+1<CR>gv=gv", { desc = "Move block down" })
-- map("v", "<C-k>", ":m '<-2<CR>gv=gv", { desc = "Move block up" })

-- quick find/replace for the word under the cursor
map("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>", {
	desc = "Replace word under cursor (all occurrences)",
})

vim.keymap.set('n', '<leader>fp', function()
    print(vim.fn.expand('%:p'))
end, { desc = "Show full file path" })
