-- local function setupCustomHighlightGroup()
-- 	vim.api.nvim_command("hi clear FlashMatch")
-- 	vim.api.nvim_command("hi clear FlashCurrent")
-- 	vim.api.nvim_command("hi clear FlashLabel")
--
-- 	vim.api.nvim_command("hi FlashMatch guibg=#4A47A3 guifg=#B8B5FF") -- Emerald background
-- 	vim.api.nvim_command("hi FlashCurrent guibg=#456268 guifg=#D0E8F2")
-- 	vim.api.nvim_command("hi FlashLabel guibg=#A25772 guifg=#EEF5FF")
-- end

return {
	"folke/flash.nvim",
	event = "VeryLazy",
	opts = {
		modes = {
			char = {
				-- for hop.nvim like jump with y combined
				jump_labels = true,
				-- disable , and ; keys
				keys = { "f", "F", "t", "T" },
				-- @alias Flash.CharActions table<string, "next" | "prev" | "right" | "left">
				char_actions = function(motion)
					return {
						--[[ [";"] = "next", -- set to `right` to always go right ]]
						--[[ [","] = "prev", -- set to `left` to always go left ]]
						-- clever-f style
						[motion:lower()] = "next",
						[motion:upper()] = "prev",
					}
				end,
				search = { wrap = false },
				highlight = { backdrop = true },
				jump = { register = false },
			},
		},
	},
	-- opts = {
	-- rainbow = {
	-- 	enabled = true,
	-- 	shade = 5,
	-- },
	-- highlight = {
	-- 	backdrop = true,
	-- 	groups = {
	-- 		match = "FlashMatch",
	-- 		current = "FlashCurrent",
	-- 		backdrop = "FlashBackdrop",
	-- 		label = "FlashLabel",
	-- 	},
	-- },
	-- modes = { char = { enabled = false } },
	-- },
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
	--
	-- 	setupCustomHighlightGroup()
	-- end,
}
