-- local function format_json_with_jq()
-- 	-- Get the current buffer content
-- 	local buffer_content = vim.api.nvim_buf_get_lines(0, 0, -1, false)
--
-- 	-- Join the buffer content into a single string
-- 	local json_content = table.concat(buffer_content, "\n")
--
-- 	-- Run jq to format the JSON content
-- 	local handle = io.popen("echo '" .. json_content .. "' | jq .")
-- 	local formatted_json = handle:read("*a")
-- 	handle:close()
--
-- 	-- Check if formatted_json is nil or empty
-- 	if formatted_json and formatted_json ~= "" then
-- 		-- Replace buffer content with formatted JSON
-- 		vim.api.nvim_buf_set_lines(0, 0, -1, false, vim.split(formatted_json, "\n"))
-- 	else
-- 		-- Handle null or empty formatted output (optional)
-- 		print("Error: JSON formatting failed or produced empty result.")
-- 		-- You can add fallback behavior here if needed
-- 	end
-- end

local function format_json_with_jq()
	-- Get the current buffer content
	local buffer_content = vim.api.nvim_buf_get_lines(0, 0, -1, false)

	-- Join the buffer content into a single string
	local json_content = table.concat(buffer_content, "\n")

	-- Run jq to format the JSON content
	local handle = io.popen("echo '" .. json_content:gsub("'", "'\\''") .. "' | jq . 2>&1")
	local formatted_json = handle:read("*a")
	handle:close()

	-- Check if jq returned an error message
	if formatted_json:match("parse error") then
		print("Error: JSON formatting failed. Invalid JSON format.")
	elseif formatted_json and formatted_json ~= "" then
		-- Replace buffer content with formatted JSON
		vim.api.nvim_buf_set_lines(0, 0, -1, false, vim.split(formatted_json, "\n"))
	else
		print("Error: JSON formatting failed or produced empty result.")
	end
end

-- Create a command to format the buffer using jq
vim.api.nvim_create_user_command("FormatJSON", format_json_with_jq, {})

-- Set up a keybinding to trigger the FormatJSON command
vim.api.nvim_set_keymap("n", "<leader>fj", ":FormatJSON<CR>", { noremap = true, silent = true })

vim.filetype.add({
	extension = {
		["http"] = "http",
	},
})

return {
	"mistweaverco/kulala.nvim",
	lazy = false,
	config = function()
		local kulala = require("kulala")
		kulala.setup({
			debug = true,
		})
		vim.keymap.set("n", "<leader>rr", kulala.run)
		vim.keymap.set("n", "<leader>rt", kulala.toggle_view)
	end,
}
