local debugging_signs = require("util.icons").debugging_signs

return {
	"mfussenegger/nvim-dap",
	config = function()
		local opts = { noremap = true, silent = true }
		vim.keymap.set("n", "<leader>db", "<cmd>DapToggleBreakpoint<CR>", opts) -- Toggle breakpoint with DAP
		vim.keymap.set("n", "<leader>dr", "<cmd>DapContinue<CR>", opts) -- continue/run DAP
		vim.keymap.set("n", "<leader>ds", "<cmd>DapStepInto<CR>", opts) -- Step into with DAP

		-- customise breakpoint sign

		vim.fn.sign_define("DapBreakpoint", debugging_signs.Breakpoint)
		vim.fn.sign_define("DapBreakpointCondition", debugging_signs.BreakpointCondition)
		vim.fn.sign_define("DapLogPoint", debugging_signs.LogPoint)
		vim.fn.sign_define("DapStopped", debugging_signs.Stopped)
		vim.fn.sign_define("DapBreakpointRejected", debugging_signs.BreakpointRejected)
	end,
}
