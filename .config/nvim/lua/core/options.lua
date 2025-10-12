local options = {
	autoindent = false, -- Copy indent from current line when starting new one (default: true)
	breakindent = true, -- Enable break indent (default: false)
	clipboard = "unnamedplus", -- Sync clipboard between OS and Neovim. (default: '')
	completeopt = "menuone,noselect", -- Set completeopt to have a better completion experience (default: 'menu,preview')
	conceallevel = 2, -- So that `` is visible in markdown files (default: 1)
	cursorline = true, -- Highlight the current line (default: false)
	expandtab = true, -- Convert tabs to spaces (default: false)
	hlsearch = false, -- Set highlight on search (default: true)
	ignorecase = true, -- Case-insensitive searching UNLESS \C or capital in search (default: false)
	linebreak = true, -- Companion to wrap, don't split words (default: false)
	mouse = "a", -- Enable mouse mode (default: '')
	number = true, -- Make line numbers default (default: false)
	numberwidth = 3, -- Set number column width to 3 {default 4} (default: 4)
	-- relativenumber = true, -- Set relative numbered lines (default: false)
	shiftwidth = 4, -- The number of spaces inserted for each indentation (default: 8)
	showmode = false, -- We don't need to see things like -- INSERT -- anymore (default: true)
	signcolumn = "yes", -- Keep signcolumn on by default
	smartcase = true, -- Smart case (default: false)
	smoothscroll = true, -- Smooth scrolling (default: false)
	softtabstop = 4, -- Number of spaces that a tab counts for while performing editing operations (default: 0)
	swapfile = false, -- Creates a swapfile (default: true)
	tabstop = 4, -- Insert n spaces for a tab (default: 8)
	termguicolors = true, -- Set termguicolors to enable highlight groups (default: false)
	timeoutlen = 300, -- Time to wait for a mapped sequence to complete (in milliseconds) (default: 1000)
	ttyfast = true, -- Faster scrolling (default: false)
	undofile = true, -- Save undo history (default: false)
	updatetime = 250, -- Decrease update time (default: 4000)
	wrap = true, -- Display lines as one long line (default: true)
}

for k, v in pairs(options) do
	vim.opt[k] = v
end

vim.opt.shortmess:append("c") -- Don't give |ins-completion-menu| messages (default: does not include 'c')
vim.opt.iskeyword:append("-") -- Hyphenated words recognized by searches (default: does not include '-')

-- Disabled plugins
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
