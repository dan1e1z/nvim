return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope-fzf-native.nvim",
		"nvim-telescope/telescope-ui-select.nvim",
		{ "nvim-tree/nvim-web-devicons", enabled = vim.g.have_nerd_font },
	},
	config = function()
		local telescope = require("telescope")
		telescope.setup({
			defaults = {
				file_ignore_patterns = {
					"node_modules",
				},
				mappings = {
					i = {
						["<C-j>"] = "move_selection_next",
						["<C-k>"] = "move_selection_previous",
					},
				},
			},
			extensions = {
				["ui-select"] = {
					require("telescope.themes").get_dropdown(),
				},
				fzf = {
					case_mode = "ignore_case",
				},
			},
		})

		-- Enable Telescope extensions if they are installed
		pcall(require("telescope").load_extension, "fzf")
		pcall(require("telescope").load_extension, "ui-select")

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
		vim.keymap.set("n", "<leader>fs", builtin.current_buffer_fuzzy_find, opts)
	end,
}
