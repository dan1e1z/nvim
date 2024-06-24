return {
	"smoka7/hop.nvim",
	version = "*",
	opts = {
		keys = "etovxqpdygfblzhckisuran",
	},
	config = function()
		require("hop").setup({})
		local hop = require("hop")
		vim.keymap.set({ "n", "v" }, "<leader>l", function()
			hop.hint_lines({})
		end)
		vim.keymap.set({ "n", "v" }, "<leader>j", function()
			hop.hint_lines_skip_whitespace({})
		end)
	end,
}
