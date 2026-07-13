require("mason").setup({
	ui = {
		icons = {
			package_installed = "✓",
			package_pending = "➜",
			package_uninstalled = "✗",
		},
	},
})

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = vim.tbl_deep_extend("force", capabilities, require("mini.completion").get_lsp_capabilities())

vim.lsp.config("*", { capabilities = capabilities })

vim.lsp.config("lua_ls", {
	settings = {
		Lua = {
			diagnostics = { globals = { "vim" } },
			telemetry = { enable = false },
		},
	},
})

vim.lsp.config("jsonls", {
	settings = {
		json = {
			schemas = require("schemastore").json.schemas(),
			validate = { enable = true },
		},
	},
})

vim.lsp.config("pylsp", {
	settings = {
		pylsp = {
			plugins = {
				pyflakes = { enabled = false },
				pycodestyle = { enabled = false },
				autopep8 = { enabled = false },
				yapf = { enabled = false },
				mccabe = { enabled = false },
				pylsp_mypy = { enabled = false },
				pylsp_black = { enabled = false },
				pylsp_isort = { enabled = false },
				pylsp_rope = { enabled = false },
			},
		},
	},
})

local selene = require("efmls-configs.linters.selene")
local stylua = require("efmls-configs.formatters.stylua")

local ruff_lint = require("efmls-configs.linters.ruff")
local ruff_format = require("efmls-configs.formatters.ruff")
local ruff_sort = require("efmls-configs.formatters.ruff_sort")

local prettier_d = require("efmls-configs.formatters.prettier_d")
local eslint_d = require("efmls-configs.linters.eslint_d")
local htmlhint = require("efmls-configs.linters.htmlhint")
local biome_format = require("efmls-configs.formatters.biome")

local fixjson = require("efmls-configs.formatters.fixjson")

local shellcheck = require("efmls-configs.linters.shellcheck")
local shfmt = require("efmls-configs.formatters.shfmt")

-- local cpplint = require("efmls-configs.linters.cpplint")
local clangfmt = require("efmls-configs.formatters.clang_format")

vim.lsp.config("efm", {
	filetypes = {
		"c",
		"cpp",
		"css",
		"html",
		"javascript",
		"javascriptreact",
		"json",
		"jsonc",
		"lua",
		"markdown",
		"python",
		"sh",
		"typescript",
		"typescriptreact",
	},
	init_options = { documentFormatting = true },
	settings = {
		languages = {
			c = { clangfmt },
			cpp = { clangfmt },
			css = { biome_format, eslint_d },
			html = { biome_format, htmlhint },
			javascript = { eslint_d, biome_format },
			javascriptreact = { eslint_d, biome_format },
			json = { eslint_d, fixjson },
			jsonc = { eslint_d, fixjson },
			lua = { selene, stylua },
			markdown = { prettier_d },
			python = { ruff_lint, ruff_format, ruff_sort },
			sh = { shellcheck, shfmt },
			typescript = { eslint_d, biome_format },
			typescriptreact = { eslint_d, biome_format },
			yaml = { prettier_d },
		},
	},
})

vim.lsp.enable({
	"bashls",
	"clangd",
	"cssls",
	"efm",
	"emmet_ls",
	"html",
	"lua_ls",
	"marksman",
	"pylsp",
	"ruff",
	"ts_ls",
})
