return {
	"nvimtools/none-ls.nvim",
	dependencies = {
		"nvimtools/none-ls-extras.nvim",
	},
	config = function()
		local null_ls = require("null-ls")
		--local none_ls = require("none-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				--null_ls.builtins.completion.ast_grep,
				null_ls.builtins.formatting.prettierd,
				null_ls.builtins.formatting.black,
				null_ls.builtins.formatting.isort,
				null_ls.builtins.completion.spell,
				--require("none-ls.diagonistic.eslint_d"),
			},
		})
		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
