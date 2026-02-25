return {
	"stevearc/conform.nvim",
	dependencies = {
		"mason.nvim", -- for managing formatters
	},
	config = function()
		require("conform").setup({
			format_on_save = {
				timeout_ms = 1000,
				lsp_fallback = true, -- uses LSP if no formatter is found
			},
			formatters = {
				biome = {
					args = { "format", "--stdin-file-path", "$FILENAME", "--html-formatter-enabled=true" },
				},
			},
			formatters_by_ft = {
				lua = { "stylua" },
				sh = { "shfmt" },
				zsh = { "beautysh" },
				python = { "ruff_fix", "ruff_format", "ruff_organize_imports" },
				html = { "biome", "biome-check", "biome-organize-imports" },
				css = { "biome", "biome-check", "biome-organize-imports" },
				javascript = { "injected", "biome", "biome-check", "biome-organize-imports" },
				typescript = { "biome", "biome-check", "biome-organize-imports" },
				javascriptreact = { "biome", "biome-check", "biome-organize-imports" },
				typescriptreact = { "biome", "biome-check", "biome-organize-imports" },
				astro = { "prettierd" },
				svelte = { "prettierd" },
				json = { "biome", "biome-check", "biome-organize-imports" },
				jsonc = { "biome", "biome-check", "biome-organize-imports" },
				toml = { "taplo" },
				yaml = { "prettierd" },
				c = { "clang-format" },
				cpp = { "clang-format" },
				markdown = { "prettierd" },
				markdown_inline = { "prettierd" },
			},
		})
	end,
}
