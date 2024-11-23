vim.filetype.add({
	extension = {
		["http"] = "http",
	},
})

return {
	"mistweaverco/kulala.nvim",
	lazy = false,
	config = function()
		local kulala = require("kulala")
		kulala.setup({
			debug = true,
		})
		vim.keymap.set("n", "<leader>rr", kulala.run)
		vim.keymap.set("n", "<leader>rt", kulala.toggle_view)
	end,
}
