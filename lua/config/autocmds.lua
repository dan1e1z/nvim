-- auto-format on save
local lsp_fmt_group = vim.api.nvim_create_augroup("LspFormattingGroup", {})
vim.api.nvim_create_autocmd("BufWritePre", {
	group = lsp_fmt_group,
	callback = function()
		-- local efm = vim.lsp.get_active_clients({ name = "efm" })
		--
		-- if vim.tbl_isempty(efm) then
		-- 	return
		-- end

		vim.lsp.buf.format({ name = "efm", async = true })
	end,
})

-- highlight on yank
local highlight_yank_group = vim.api.nvim_create_augroup("HighlightYankGroup", {})
vim.api.nvim_create_autocmd("TextYankPost", {
	group = highlight_yank_group,
	callback = function()
		vim.highlight.on_yank()
	end,
})
-- vim.api.nvim_create_autocmd("BufReadPost", {
-- 	callback = function(event)
-- 		local buf = event.buf
-- 		local mark = vim.api.nvim_buf_get_mark(buf, '"')
-- 		local lcount = vim.api.nvim_buf_line_count(buf)
-- 		if mark[1] > 0 and mark[1] <= lcount then
-- 			pcall(vim.api.nvim_win_set_cursor, 0, mark)
-- 			vim.cmd("normal! zz") -- Center the screen on the cursor
-- 		end
-- 	end,
-- })
