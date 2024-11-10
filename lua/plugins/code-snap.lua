return {
	"mistricky/codesnap.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	build = "make",
	opts = {
		save_path = "~/Pictures",
		has_breadcrumbs = true,
		bg_theme = "bamboo",
	},
	config = function()
		require("codesnap").setup({
			title = "thatzerroguy",
			--	code_font_family = "JetBrains Mono Nerd Font",
			watermark = "thatzerroguy",
			bg_theme = "bamboo",
			has_breadcrumbs = true,
			show_workspace = true,
			breadcrumbs_seperator = "▸",
		})
	end,
}
