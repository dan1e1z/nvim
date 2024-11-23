local nnoremap = require("util.keymap_util").nnoremap
local vnoremap = require("util.keymap_util").vnoremap
local inoremap = require("util.keymap_util").inoremap
local tnoremap = require("util.keymap_util").tnoremap
local xnoremap = require("util.keymap_util").xnoremap

-- local opts = { noremap = true, silent = true }

-- Indenting
-- vim.keymap.set("v", "<", "<gv", opts)
-- vim.keymap.set("v", ">", ">gv", opts)
vnoremap("<", "<gv")
vnoremap(">", ">gv")

-- Window Management
-- vim.keymap.set("n", "<leader>-", ":vsplit<CR>", opts) -- Split Vertically
-- vim.keymap.set("n", "<leader>|", ":split<CR>", opts) -- Split Horizontally
nnoremap("<leader>-", ":vsplit<CR>")
nnoremap("<leader>|", ":split<CR>")

-- Center buffer while navigating
nnoremap("<C-u>", "<C-u>zz")
nnoremap("<C-d>", "<C-d>zz")
nnoremap("{", "{zz")
nnoremap("}", "}zz")
nnoremap("N", "Nzz")
nnoremap("n", "nzz")
nnoremap("G", "Gzz")
nnoremap("gg", "ggzz")
nnoremap("gd", "gdzz")
nnoremap("<C-i>", "<C-i>zz")
nnoremap("<C-o>", "<C-o>zz")
nnoremap("%", "%zz")
nnoremap("*", "*zz")
nnoremap("#", "#zz")

-- Line and Block Movement
-- vim.keymap.set("n", "<C-j>", "<cmd>m .+1<cr>==")
-- vim.keymap.set("n", "<C-k>", "<cmd>m .-2<cr>==")
-- vim.keymap.set("v", "<C-j>", ":m '>+1<cr>gv=gv")
-- vim.keymap.set("v", "<C-k>", ":m '<-2<cr>gv=gv")
