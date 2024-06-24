-- auto-format on save
local lsp_fmt_group = vim.api.nvim_create_augroup("LspFormattingGroup", {})
vim.api.nvim_create_autocmd("BufWritePre", {
	group = lsp_fmt_group,
	callback = function()
		vim.lsp.buf.format({ name = "null-ls", async = true })
	end,
})

-- Restore cursor position and center
vim.api.nvim_create_autocmd("BufReadPost", {
	callback = function(event)
		local buf = event.buf
		local mark = vim.api.nvim_buf_get_mark(buf, '"')
		local lcount = vim.api.nvim_buf_line_count(buf)
		if mark[1] > 0 and mark[1] <= lcount then
			pcall(vim.api.nvim_win_set_cursor, 0, mark)
			vim.schedule(function()
				vim.cmd("normal! zz")
			end)
		end
	end,
})

-- window wsl ^M fix
function Trim()
	local save = vim.fn.winsaveview()
	vim.cmd("keeppatterns %s/\\s\\+$\\|\\r$//e")
	vim.fn.winrestview(save)
end

function Paste_and_trim()
	-- Perform the default paste action
	vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("p", true, false, true), "n", false)
	-- Call the trim function
	vim.schedule(function()
		Trim()
	end)
end

-- Set up the key mapping for 'p' to use Paste_and_trim in normal mode
vim.api.nvim_set_keymap("n", "p", ":lua Paste_and_trim()<CR>", { noremap = true, silent = true })
