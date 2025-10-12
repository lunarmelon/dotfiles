return {
	"nvim-mini/mini.nvim",
	version = false,
	config = function()
		local miniclue = require("mini.clue")
		local minicomment = require("mini.comment")
		local minifiles = require("mini.files")
		local miniicons = require("mini.icons")
		local minipairs = require("mini.pairs")
		local minisurround = require("mini.surround")
		local minitabline = require("mini.tabline")

		-- Mini tabline colors
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

		miniclue.setup({
			triggers = {
				-- Leader triggers
				{ mode = "n", keys = "<Leader>" },
				{ mode = "x", keys = "<Leader>" },

				-- Built-in completion
				{ mode = "i", keys = "<C-x>" },

				-- `g` key
				{ mode = "n", keys = "g" },
				{ mode = "x", keys = "g" },

				-- Marks
				{ mode = "n", keys = "'" },
				{ mode = "n", keys = "`" },
				{ mode = "x", keys = "'" },
				{ mode = "x", keys = "`" },

				-- Registers
				{ mode = "n", keys = '"' },
				{ mode = "x", keys = '"' },
				{ mode = "i", keys = "<C-r>" },
				{ mode = "c", keys = "<C-r>" },

				-- Window commands
				{ mode = "n", keys = "<C-w>" },

				-- `z` key
				{ mode = "n", keys = "z" },
				{ mode = "x", keys = "z" },
			},

			clues = {
				-- Enhance this by adding descriptions for <Leader> mapping groups
				miniclue.gen_clues.builtin_completion(),
				miniclue.gen_clues.g(),
				miniclue.gen_clues.marks(),
				miniclue.gen_clues.registers(),
				miniclue.gen_clues.windows(),
				miniclue.gen_clues.z(),
			},
		})
		minicomment.setup()
		minifiles.setup()
		miniicons.setup()
		minipairs.setup()
		minisurround.setup()
		minitabline.setup({
			format = function(buf_id, label)
				local suffix = vim.bo[buf_id].modified and "● " or ""
				return MiniTabline.default_format(buf_id, label) .. suffix
			end,
		})
	end,
	-- Override all nvim-web-devicons dependencies with mini.icons.
	init = function()
		package.preload["nvim-web-devicons"] = function()
			require("mini.icons").mock_nvim_web_devicons()
			return package.loaded["nvim-web-devicons"]
		end
	end,
}
