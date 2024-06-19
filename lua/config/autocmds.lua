-- auto-format on save
local lsp_fmt_group = vim.api.nvim_create_augroup("LspFormattingGroup", {})
vim.api.nvim_create_autocmd("BufWritePre", {
	group = lsp_fmt_group,
	callback = function()
		vim.lsp.buf.format({ name = "null-ls", async = true })
	end,
})

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
