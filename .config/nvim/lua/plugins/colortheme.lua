return {
	"catppuccin/nvim",
	lazy = false,
	priority = 1000,
	config = function()
		vim.cmd("colorscheme catppuccin-mocha")

		vim.api.nvim_set_hl(0, "MiniTablineCurrent", {
			fg = "#89b4fa",
			bg = "NONE",
			bold = true,
		})
		vim.api.nvim_set_hl(0, "MiniTablineModifiedCurrent", {
			fg = "#f9e2af",
			bg = "NONE",
			bold = true,
		})
		vim.api.nvim_set_hl(0, "MiniTablineModifiedVisible", {
			fg = "#f9e2af",
			bg = "NONE",
			bold = false,
		})
		vim.api.nvim_set_hl(0, "MiniTablineVisible", {
			fg = "#89b4fa",
			bg = "NONE",
			bold = false,
		})
		vim.api.nvim_set_hl(0, "MiniTablineHidden", {
			fg = "#6c7086",
			bg = "NONE",
			bold = false,
		})
		vim.api.nvim_set_hl(0, "MiniTablineModifiedHidden", {
			fg = "#7e7256",
			bg = "NONE",
			bold = false,
		})
	end,
}
