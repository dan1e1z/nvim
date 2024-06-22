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
		vim.keymap.set("n", "D", vim.lsp.buf.hover, {}) -- Show hover information
		vim.keymap.set("n", "gd", vim.lsp.buf.definition, {}) -- Jump to definition (full specification)
		vim.keymap.set("n", "gD", vim.lsp.buf.declaration, {}) -- Jump to declaration (introduction)
		vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {}) -- Jump to implementation (actual code)
		vim.keymap.set("n", "gr", vim.lsp.buf.references, {}) -- List all references
		vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {}) -- Trigger code actions
		vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {}) -- Rename symbol
	end,
}
