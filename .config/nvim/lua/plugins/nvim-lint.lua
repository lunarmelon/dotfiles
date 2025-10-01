return {
	"mfussenegger/nvim-lint",
	event = { "BufWritePost", "BufReadPost", "InsertLeave" },
	config = function()
		local lint = require("lint")
		lint.linters_by_ft = {
			lua = { "selene" },
			sh = { "shellcheck" },
			python = { "ruff" },
			html = { "htmlhint" },
			css = { "biomejs" },
			javascript = { "biomejs" },
			typescript = { "biomejs" },
			javascriptreact = { "biomejs" },
			typescriptreact = { "biomejs" },
			json = { "biomejs" },
			jsonc = { "biomejs" },
		}
		vim.api.nvim_create_autocmd({ "BufWritePost", "InsertLeave" }, {
			callback = function()
				lint.try_lint()
			end,
		})
	end,
}
