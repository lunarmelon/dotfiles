return {
	"pmizio/typescript-tools.nvim",
	dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
	ft = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
	opts = {
		settings = {
			tsserver_format_options = {
				indentSize = 4,
				convertTabsToSpaces = true,
			},
		},
	},
}
