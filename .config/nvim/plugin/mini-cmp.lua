require("mini.completion").setup({
	lsp_completion = {
		auto_setup = true,
	},
})

local MiniSnippets = require("mini.snippets")
MiniSnippets.setup({
	snippets = {
		MiniSnippets.gen_loader.from_lang(), -- loads friendly-snippets
	},
})
MiniSnippets.start_lsp_server({ match = false })
