return {
	"neovim/nvim-lspconfig",
	dependencies = "williamboman/mason-lspconfig.nvim",
	config = function()
		local capabilities = require("cmp_nvim_lsp").default_capabilities()

		local lspconfig = require("lspconfig")

		-- Setup for Tailwind CSS
		lspconfig.tailwindcss.setup({
			capabilities = capabilities,
		})

		-- Setup for TypeScript Server
		lspconfig.tsserver.setup({
			capabilities = capabilities,
		})

		-- Setup for HTML language server
		lspconfig.html.setup({
			capabilities = capabilities,
		})

		-- Setup for Lua language server
		lspconfig.lua_ls.setup({
			capabilities = capabilities,
		})

		-- Setup for Python language server (pyright)
		lspconfig.pyright.setup({
			capabilities = capabilities,
		})

		-- Setup for C/C++ language server (clangd)
		lspconfig.clangd.setup({
			capabilities = capabilities,
		})

		-- Key mappings
		vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
		vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
		vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
		vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
		vim.keymap.set("n", "<leader>rn", vim.lsp.buf.code_action, {})
		vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, {})
	end,
}
