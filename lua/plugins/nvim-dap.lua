return {
	"mfussenegger/nvim-dap",
	config = function()
		local opts = { noremap = true, silent = true }
		vim.keymap.set("n", "<leader>db", "<cmd>DapToggleBreakpoint<CR>", opts) -- Toggle breakpoint with DAP
		vim.keymap.set("n", "<leader>dr", "<cmd>DapContinue<CR>", opts) -- continue/run DAP
		vim.keymap.set("n", "<leader>ds", "<cmd>DapStepInto<CR>", opts) -- Step into with DAP
	end,
}
