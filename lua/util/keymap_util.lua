local M = {}

-- Helper function to bind keymaps
local function bind(op, outer_opts)
	outer_opts = vim.tbl_extend("force", { noremap = true, silent = true }, outer_opts or {})

	return function(lhs, rhs, opts)
		opts = vim.tbl_extend("force", outer_opts, opts or {})
		vim.keymap.set(op, lhs, rhs, opts)
	end
end

-- General keymap for all modes
M.map = bind("", { noremap = false })

-- Specific mode keymaps
M.nmap = bind("n", { noremap = false }) -- Normal mode, recursive
M.nnoremap = bind("n") -- Normal mode, non-recursive
M.vnoremap = bind("v") -- Visual mode
M.xnoremap = bind("x") -- Visual block mode
M.inoremap = bind("i") -- Insert mode
M.tnoremap = bind("t") -- Terminal mode

return M
