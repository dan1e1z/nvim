return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "folke/noice.nvim", "nvim-tree/nvim-web-devicons" },
	config = function()
		require("lualine").setup({
			sections = {
				lualine_x = {
				  {
				    require("noice").api.status.command.get,
				    cond = require("noice").api.status.command.has,
				    color = { fg = "#ff9e64" },
				  },
				  {
				    require("noice").api.status.mode.get,
				    cond = require("noice").api.status.mode.has,
				    color = { fg = "#ff9e64" },
				  },
				},
			},
		})
	end,
}
