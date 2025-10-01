return {
	--"catppuccin/nvim",
	"folke/tokyonight.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		--vim.cmd("colorscheme catppuccin-mocha")
		vim.cmd("colorscheme tokyonight-night")
	end,
}
