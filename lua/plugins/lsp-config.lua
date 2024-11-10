return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		opts = {
			auto_install = true
		}
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			local capabilities = require('cmp_nvim_lsp').default_capabilities()

			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({
				capabilities = capabilities
			})
			lspconfig.tsserver.setup({
				capabilities = capabilities
			})
			lspconfig.tailwindcss.setup({
				capabilities = capabilities
			})
			lspconfig.kotlin_language_server.setup({
				capabilities = capabilities
			})
			lspconfig.clangd.setup({
				capabilities =capabilities
			})
			--lspconfig.dcm.setup({
				--capabilities = capabilities
			--})
			--lspconfig.ast_grep.setup({
				--capabilities = capabilities
			--})
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
			vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
			vim.keymap.set('n', 'gdd', vim.lsp.buf.declaration, {})
			vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
			vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, {})
			vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, {})

		end
	}
}


----SSh Key-----
-- SHA256:6XzyxhfT2q44jl7o5QOVuFI/rpZtePK3YsGn5mHWEwQ ndukaugochukwu9@gmail.com
