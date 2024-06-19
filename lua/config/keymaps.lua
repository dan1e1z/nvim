local mapkey = require("util.keymapper").mapvimkey

-- local keymap = vim.keymap

-- local opts = { noremap = true, silent = true }

-- Directory Navigation

-- activates file explorer with space m
-- arguement:
-- 1: mode - normal mode
-- 2: key-binding - space
-- 3: command - :NvimTreeFocus
-- 4: noremap = no remaps, silent: no notifactions
mapkey("<leader>m", "NvimTreeFocus", "n")
-- keymap.set("n", "<leader>m", ":NvimTreeFocus<CR>", opts)

--- same as above but for :NvimTreeToggle
mapkey("<leader>e", "NvimTreeToggle", "n")
-- keymap.set("n", "<leader>f", ":NvimTreeToggle<CR>", opts)

-- Pane and Window Navigation

-- mapkey("<C-h>", "<C-w>h", "n")
-- -- keymap.set("n", "<C-h>", "<C-w>h", opts) -- Navigate Left
--
-- mapkey("<C-j>", "<C-w>j", "n")
-- -- keymap.set("n", "<C-j>", "<C-w>j", opts) -- Navigate Down
--
-- mapkey("<C-k>", "<C-w>k", "n")
-- -- keymap.set("n", "<C-k>", "<C-w>k", opts) -- Navigate Up
--
-- mapkey("<C-l>", "<C-w>l", "n")
-- -- keymap.set("n", "<C-l>", "<C-w>l", opts) -- Navigate Right
--
-- mapkey("<C-h>", "wincmd h", "t") -- Navigate Left
-- mapkey("<C-j>", "wincmd j", "t") -- Navigate Down
-- mapkey("<C-k>", "wincmd k", "t") -- Navigate Up
-- mapkey("<C-l>", "wincmd l", "t") -- Navigate Right
-- mapkey("<C-h>", "TmuxNavigateLeft", "n") -- Navigate Left
-- mapkey("<C-j>", "TmuxNavigateDown", "n") -- Navigate Down
-- mapkey("<C-k>", "TmuxNavigateUp", "n") -- Navigate Up
-- mapkey("<C-l>", "TmuxNavigateRight", "n") -- Navigate Right

-- Window Management

mapkey("<leader>sv", "vsplit", "n")
-- keymap.set("n", "<leader>sv", "vsplit<CR>", opts) -- Split Vertically

mapkey("<leader>sh", "split", "n")
-- keymap.set("n", "<leader>sh", "split<CR>", opts) -- Split Horizontally
-- keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>", opts) -- Toggle Minimize

-- resize tmux window
mapkey("<C-Up>", "resize +2", "n")
mapkey("<C-Down>", "resize -2", "n")
mapkey("<C-Left>", "vertical resize +2", "n")
mapkey("<C-Right>", "vertical resize -2", "n")

-- Show Full File-Path
mapkey("<leader>pa", "echo expand('%:p')", "n") -- Show Full File Path

local api = vim.api
-- Indenting

-- allows visual mode to be kept, after > or < for indenting

api.nvim_set_keymap("v", "<", "<gv", { silent = true, noremap = true })
-- keymap.set("v", "<", "<gv")

api.nvim_set_keymap("v", ">", ">gv", { silent = true, noremap = true })
-- keymap.set("v", ">", ">gv")

-- local api = vim.api

-- Zen Mode
api.nvim_set_keymap("n", "<leader>zn", ":TZNarrow<CR>", {})
api.nvim_set_keymap("v", "<leader>zn", ":'<,'>TZNarrow<CR>", {})
api.nvim_set_keymap("n", "<leader>sm", ":TZFocus<CR>", {})
api.nvim_set_keymap("n", "<leader>zm", ":TZMinimalist<CR>", {})
api.nvim_set_keymap("n", "<leader>za", ":TZAtaraxis<CR>", {})

-- Comments

-- allows commenting to be done with command /

-- api.nvim_set_keymap("n", "<C-_>", "gtc", { noremap = false })
-- keymap.set("n", "<C-_>", "gcc", { noremap = false })

-- api.nvim_set_keymap("v", "<C-_>", "goc", { noremap = false })
-- keymap.set("v", "<C-_>", "gcc", { noremap = false })
