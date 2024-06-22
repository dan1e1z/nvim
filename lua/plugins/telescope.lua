return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.6",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local telescope = require("telescope")
		telescope.setup({
			defaults = {
				mappings = {
					i = {
						["<C-j>"] = "move_selection_next",
						["<C-k>"] = "move_selection_previous",
					},
				},
			},
		})

		-- Load telescope.builtin into a local variable for convenience
		local builtin = require("telescope.builtin")

		-- Define options table for mappings
		local opts = { noremap = true, silent = true }

		-- Set up key mappings using vim.keymap.set
		vim.keymap.set("n", "<leader>ff", builtin.find_files, opts)
		vim.keymap.set("n", "<leader>fg", builtin.live_grep, opts)
		vim.keymap.set("n", "<leader>fb", builtin.buffers, opts)
		vim.keymap.set("n", "<leader>fh", builtin.help_tags, opts)
		vim.keymap.set("n", "<leader>fk", builtin.keymaps, opts)
	end,
}
