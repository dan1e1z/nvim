return {
	"nvim-tree/nvim-tree.lua",
	lazy = false,

	config = function()
		vim.cmd([[hi NvimTreeNormal guibg=NONE ctermbg=None]])
		require("nvim-tree").setup({
			filters = {
				dotfiles = false,
			},
		})

		local opts = { noremap = true, silent = true }

		-- NeoTree
		vim.keymap.set("n", "<leader>m", ":NvimTreeFocus<CR>", opts) -- Focus on NvimTree
		vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", opts) -- Toggle NvimTree visibility
	end,
}
