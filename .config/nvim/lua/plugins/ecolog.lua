return {
	"ph1losof/ecolog.nvim",
	keys = {
		{ "<leader>ec", "", desc = "+ecolog", mode = { "n", "v" } },
		{ "<leader>elp", "<Cmd>EcologShelterLinePeek<cr>", desc = "Peek line" },
		{ "<leader>ey", "<Cmd>EcologCopy<cr>", desc = "Copy value under cursor" },
		{ "<leader>ei", "<Cmd>EcologInterpolationToggle<cr>", desc = "Toggle interpolation" },
		{ "<leader>eh", "<Cmd>EcologShellToggle<cr>", desc = "Toggle shell variables" },
		{ "<leader>ge", "<cmd>EcologGoto<cr>", desc = "Go to env file" },
		{ "<leader>eS", "<cmd>EcologSelect<cr>", desc = "Switch env file" },
		{ "<leader>es", "<cmd>EcologShelterToggle<cr>", desc = "Shelter toggle" },
	},
	opts = {
		preferred_environment = "local",
		types = true,
		monorepo = {
			enabled = true,
			auto_switch = true,
			notify_on_switch = false,
		},
		providers = {
			{
				pattern = "{{[%w_]+}}?$",
				filetype = "http",
				extract_var = function(line, col)
					local utils = require("ecolog.utils")
					return utils.extract_env_var(line, col, "{{([%w_]+)}}?$")
				end,
				get_completion_trigger = function()
					return "{{"
				end,
			},
		},
		interpolation = {
			enabled = true,
			features = {
				commands = false,
			},
		},
		sort_var_fn = function(a, b)
			if a.source == "shell" and b.source ~= "shell" then
				return false
			end
			if a.source ~= "shell" and b.source == "shell" then
				return true
			end

			return a.name < b.name
		end,
		integrations = {
			blink_cmp = true,
		},
		shelter = {
			configuration = {
				patterns = {
					["DATABASE_URL"] = "full",
				},
				sources = {
					[".env.example"] = "none",
				},
				partial_mode = {
					min_mask = 5,
					show_start = 1,
					show_end = 1,
				},
				mask_char = "*",
			},
			modules = {
				cmp = true,
				files = true,
			},
		},
		path = vim.fn.getcwd(),
	},
}
