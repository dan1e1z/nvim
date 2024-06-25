return {
	"smoka7/hop.nvim",
	version = "*",
	opts = {},
	config = function()
		require("hop").setup({})
		local hop = require("hop")
		vim.keymap.set({ "n", "x", "o" }, "s", function()
			hop.hint_words({})
		end)
		vim.keymap.set({ "n", "x", "o" }, "<leader>l", function()
			hop.hint_lines({})
		end)
		vim.keymap.set({ "n", "x", "o" }, "<leader>j", function()
			hop.hint_lines_skip_whitespace({})
		end)
	end,
}
