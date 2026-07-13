local treesitter = require("nvim-treesitter")

local ensure_installed = {
	"bash",
	"c",
	"css",
	"cpp",
	"go",
	"html",
	"java",
	"javascript",
	"json",
	"lua",
	"markdown",
	"markdown_inline",
	"python",
	"regex",
	"rust",
	"tsx",
	"typescript",
}

treesitter.install(ensure_installed)
