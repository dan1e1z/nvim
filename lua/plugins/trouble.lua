local diagnostic_signs = require("util.icons").diagnostic_signs

return {
	"folke/trouble.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {
		signs = {
			-- icons / text used for a diagnostic
			error = diagnostic_signs.Error,
			warning = diagnostic_signs.Warn,
			hint = diagnostic_signs.Hint,
			information = diagnostic_signs.Info,
			other = diagnostic_signs.Info,
		},
	},

	vim.keymap.set("n", "<leader>tt", function()
		require("trouble").toggle("diagnostics")
	end),
}
