-- Standalone plugins with less than 10 lines of config go here
return {
	{
		-- Tmux & split window navigation
		"christoomey/vim-tmux-navigator",
	},
	{
		-- Highlight todo, notes, etc in comments
		"folke/todo-comments.nvim",
		event = "VimEnter",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = { signs = false },
	},
	{
		-- High-performance color highlighter
		"catgoose/nvim-colorizer.lua",
		event = "BufReadPre",
		opts = {
			user_default_options = {
				names = false,
				tailwind = true,
			},
		},
	},
	{
		-- Live web server
		"brianhuster/live-preview.nvim",
		dependencies = {
			"nvim-telescope/telescope.nvim",
		},
	},
	{
		-- Faster LuaLS setup for Neovim config
		"folke/lazydev.nvim",
		ft = "lua",
		opts = {},
	},
	{
		"qwavies/smart-backspace.nvim",
		event = { "InsertEnter", "CmdlineEnter" },
	},
}
