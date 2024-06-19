-- Load Nevim module
local vim = vim

-- [[ Install `lazy.nvim` plugin manager ]]
--    https://github.com/folke/lazy.nvim
--    `:help lazy.nvim.txt` for more info
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if vim.fn.isdirectory(lazypath) == 0 then
	-- if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- import globals:
-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
require("config.globals")
require("config.options")
require("config.autocmds")

-- creates a variable plugins
local plugins = "plugins"

local opts = {
	defaults = {
		lazy = true,
	},
	install = {
		colorscheme = { "rose-pine" },
	},
	rtp = {
		disabled_plugins = {
			"gzip",
			"matchit",
			"matchparen",
			"netrw",
			"netrwPlugin",
			"tarPlugin",
			"tohtml",
			"tutor",
			"zipPlugin",
		},
	},
	change_detection = {
		notify = false,
	},
}

-- import plugin directory from /lua/plugins
require("lazy").setup(plugins, opts)
require("config.keymaps")

-- harpoon
local harpoon = require("harpoon")

vim.keymap.set("n", "<leader>a", function()
	harpoon:list():add()
end)
vim.keymap.set("n", "<leader>h", function()
	harpoon.ui:toggle_quick_menu(harpoon:list())
end)
vim.keymap.set("n", "<S-h>", function()
	harpoon:list():select(1)
end)
vim.keymap.set("n", "<S-j>", function()
	harpoon:list():select(2)
end)
vim.keymap.set("n", "<S-k>", function()
	harpoon:list():select(3)
end)
vim.keymap.set("n", "<S-l>", function()
	harpoon:list():select(4)
end)

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<C-S-P>", function()
	harpoon:list():prev()
end)
vim.keymap.set("n", "<C-S-N>", function()
	harpoon:list():next()
end)

local todo_comments = require("todo-comments")
local trouble = require("trouble")
