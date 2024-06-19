return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				-- Formatting using stylua for Lua files
				null_ls.builtins.formatting.stylua,

				-- Formatting using prettier for JavaScript, TypeScript, CSS, etc.
				null_ls.builtins.formatting.prettier,

				-- Formatting using clang-format for C/C++ files
				null_ls.builtins.formatting.clang_format,
			},
		})
	end,
}
