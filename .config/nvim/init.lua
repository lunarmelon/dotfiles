-- Enable the experimental Lua module loader
vim.loader.enable()

-- Enable the new experimental command-line features
require("vim._core.ui2").enable({})

require("settings")
require("vim-pack")
require("keymaps")
require("commands")
require("autocmds")

-- Theme
vim.cmd.colorscheme("catppuccin-mocha")
