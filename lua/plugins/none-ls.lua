return {
	"nvimtools/none-ls.nvim",
	dependencies = {
		"nvimtools/none-ls-extras.nvim", -- eslint_d
	},
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				-- Formatting using stylua for Lua files
				null_ls.builtins.formatting.stylua,

				-- Formatting using prettier for JavaScript, TypeScript, CSS, etc.
				null_ls.builtins.formatting.prettierd,
				-- require("none-ls.diagnostics.eslint_d"),
				require("none-ls.code_actions.eslint_d"),

				-- Formatting using clang-format for C/C++ files
				null_ls.builtins.formatting.clang_format,

				-- Formatting using black for python files
				null_ls.builtins.formatting.black,

				-- Formatting using gofmt for go files
				null_ls.builtins.formatting.gofmt,
				-- Shortens long lines for go
				null_ls.builtins.formatting.golines,
				-- Updates Go import lines (adding/removing)
				null_ls.builtins.formatting.goimports,
			},
		})
	end,
}
