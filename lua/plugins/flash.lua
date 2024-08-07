-- local function setupCustomHighlightGroup()
-- 	vim.api.nvim_command("hi clear FlashMatch")
-- 	vim.api.nvim_command("hi clear FlashCurrent")
-- 	vim.api.nvim_command("hi clear FlashLabel")
--
-- 	vim.api.nvim_command("hi FlashMatch guibg=#6e6a86 guifg=#e0def4") -- Muted background, Text foreground
-- 	vim.api.nvim_command("hi FlashCurrent guibg=#f6c177 guifg=#191724") -- Gold background, Base foreground
-- 	vim.api.nvim_command("hi FlashLabel guibg=#eb6f92 guifg=#191724") -- Love background, Base foreground
-- end

return {
	"folke/flash.nvim",
	event = "VeryLazy",
	opts = { modes = { char = { enabled = false } } },
	keys = {
		{
			"s",
			mode = { "n", "x", "o" },
			function()
				require("flash").jump()
			end,
			desc = "Flash",
		},
		{
			"r",
			mode = "o",
			function()
				require("flash").remote()
			end,
			desc = "Remote Flash",
		},
	},
	-- config = function()
	-- 	setupCustomHighlightGroup()
	-- end,
}
