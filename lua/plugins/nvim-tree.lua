return {
	"nvim-tree/nvim-tree.lua",
	lazy = false,

	config = function()
		vim.cmd([[hi NvimTreeNormal guibg=NONE ctermbg=None]])
		require("nvim-tree").setup({
			view = {
				side = "right",
				adaptive_size = true,
			},
		})

		local opts = { noremap = true, silent = true }

		-- NvimTree
		local api = require("nvim-tree.api")
		vim.keymap.set("n", "<leader>e", api.tree.toggle, opts) -- Toggle NvimTree visibility
	end,
}
