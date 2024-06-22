return {
	"mrjones2014/smart-splits.nvim",
	config = function()
		vim.keymap.set("n", "<C-left>", require("smart-splits").resize_left)
		vim.keymap.set("n", "<C-down>", require("smart-splits").resize_down)
		vim.keymap.set("n", "<C-up>", require("smart-splits").resize_up)
		vim.keymap.set("n", "<C-right>", require("smart-splits").resize_right)
		vim.keymap.set("n", "<leader><leader>h", require("smart-splits").swap_buf_left)
		vim.keymap.set("n", "<leader><leader>j", require("smart-splits").swap_buf_down)
		vim.keymap.set("n", "<leader><leader>k", require("smart-splits").swap_buf_up)
		vim.keymap.set("n", "<leader><leader>l", require("smart-splits").swap_buf_right)
	end,
}
