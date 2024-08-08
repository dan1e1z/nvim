if vim.fn.has("wsl") == 1 then
	if vim.fn.executable("wl-copy") == 0 then
		print("wl-clipboard not found, clipboard integration won't work")
	else
		vim.g.clipboard = {
			name = "wl-clipboard (wsl)",
			copy = {
				["+"] = "wl-copy --foreground --type text/plain",
				["*"] = "wl-copy --foreground --primary --type text/plain",
			},
			paste = {
				["+"] = function()
					return vim.fn.systemlist("wl-paste  | sed 's/\\r$//'")
					-- return vim.fn.systemlist('wl-paste --no-newline | sed \'s/\\r$//\'') -- newline
				end,
				["*"] = function()
					return vim.fn.systemlist("wl-paste --primary  | sed 's/\\r$//'")
					-- return vim.fn.systemlist('wl-paste --primary --no-newline | sed \'s/\\r$//\'') -- newline
				end,
			},
			cache_enabled = true,
		}
	end
end

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if vim.fn.isdirectory(lazypath) == 0 then
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

-- Load leader key
require("config.globals")

vim.filetype.add({
	extension = {
		["http"] = "http",
	},
})

-- Load and setup plugins
require("lazy").setup("plugins")

-- Load configuration files
require("config")
