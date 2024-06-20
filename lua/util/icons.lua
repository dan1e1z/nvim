local M = {}
-- Set highlight groups for DAP signs
vim.api.nvim_set_hl(0, "DapBreakpoint", { ctermbg = 0, fg = "#993939", bg = "NONE" })
vim.api.nvim_set_hl(0, "DapLogPoint", { ctermbg = 0, fg = "#61afef", bg = "NONE" })
vim.api.nvim_set_hl(0, "DapStopped", { ctermbg = 0, fg = "#98c379", bg = "NONE" })
vim.api.nvim_set_hl(0, "DapBreakpointCondition", { ctermbg = 0, fg = "#E5C07B", bg = "NONE" })
vim.api.nvim_set_hl(0, "DapBreakpointRejected", { ctermbg = 0, fg = "#E06C75", bg = "NONE" })

M.debugging_signs = {
	Stopped = { text = "󰁕", texthl = "DapStopped", linehl = "", numhl = "" },
	Breakpoint = { text = "", texthl = "DapBreakpoint", linehl = "", numhl = "" },
	BreakpointCondition = { text = "", texthl = "DapBreakpointCondition", linehl = "", numhl = "" },
	BreakpointRejected = { text = " ", texthl = "DapBreakpointRejected", linehl = "", numhl = "" },
	LogPoint = { test = ".>", texthl = "DapLogPoint", linehl = "", numhl = "" },
}

M.diagnostic_signs = {
	Error = " ",
	Warn = " ",
	Hint = "",
	Info = "",
}

return M
