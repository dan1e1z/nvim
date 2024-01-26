return {
	-- imports repositiory
	"nvim-tree/nvim-tree.lua",

	-- does not lazy load, always open
	lazy = false,

	-- 
	config = function()
		vim.cmd([[hi NvimTreeNormal guibg=NONE ctermbg=None]])
		require("nvim-tree").setup({
			filters = {
				dotfiles = false,
			},
		})
	end,
}
