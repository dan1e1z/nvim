-- return {
-- 	"ThePrimeagen/harpoon",
-- 	branch = "harpoon2",
-- 	event = "VeryLazy",
-- 	dependencies = { "nvim-lua/plenary.nvim" },
-- 	vim.keymap.set("n", "<leader>h", function()
-- 		require("harpoon").ui:toggle_quick_menu(require("harpoon"):list())
-- 	end),
-- 	vim.keymap.set("n", "<leader>a", function()
-- 		require("harpoon"):list():add()
-- 	end),
-- 	vim.keymap.set("n", "<S-h>", function()
-- 		require("harpoon"):list():select(1)
-- 	end),
-- 	vim.keymap.set("n", "<S-j>", function()
-- 		require("harpoon"):list():select(2)
-- 	end),
-- 	vim.keymap.set("n", "<S-k>", function()
-- 		require("harpoon"):list():select(3)
-- 	end),
-- 	vim.keymap.set("n", "<S-l>", function()
-- 		require("harpoon"):list():select(4)
-- 	end),
-- }

return {
	"cbochs/grapple.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	keys = {
		{ "<leader>a", "<cmd>Grapple toggle<cr>", desc = "Tag a file" },
		{ "<leader>h", "<cmd>Grapple toggle_tags<cr>", desc = "Toggle tags menu" },
		{ "H", "<cmd>Grapple select index=1<cr>", desc = "Select first tag" },
		{ "J", "<cmd>Grapple select index=2<cr>", desc = "Select second tag" },
		{ "K", "<cmd>Grapple select index=3<cr>", desc = "Select third tag" },
		{ "L", "<cmd>Grapple select index=4<cr>", desc = "Select fourth tag" },
	},
}
