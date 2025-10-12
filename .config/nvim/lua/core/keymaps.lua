-- Set leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Disable the spacebar key's default behavior in Normal and Visual modes
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

-- For conciseness
local function map(mode, key, cmd, desc)
	local opts = {
		noremap = true,
		silent = true,
		desc = desc,
	}
	vim.keymap.set(mode, key, cmd, opts)
end

-- save file
map("n", "<C-s>", ":w<CR>", "Save file")

-- save file without auto-formatting
map("n", "<leader>sn", ":noautocmd w<CR>", "Save file without auto-formatting")

-- quit file
map("n", "<C-q>", ":q <CR>", "Quit file")

-- delete single character without copying into register
map("n", "x", '"_x', " Delete character")

-- Vertical scroll and center
map("n", "<C-d>", "<C-d>zz", "Scroll down and center")
map("n", "<C-u>", "<C-u>zz", "Scroll up and center")

-- Find and center
map("n", "n", "nzzzv", "Next match and center")
map("n", "N", "Nzzzv", "Previous match and center")

-- Resize with arrows
map("n", "<Up>", ":resize -2<CR>", "Resize up")
map("n", "<Down>", ":resize +2<CR>", "Resize down")
map("n", "<Left>", ":vertical resize -2<CR>", "Resize left")
map("n", "<Right>", ":vertical resize +2<CR>", "Resize right")

-- Buffers
map("n", "<Tab>", ":bnext<CR>", "Next buffer")
map("n", "<S-Tab>", ":bprevious<CR>", "Previous buffer")
map("n", "<leader>x", ":bdelete!<CR>", "Close buffer")
map("n", "<leader>b", ":enew <CR>", "New buffer")

-- Window management
map("n", "<leader>v", "<C-w>v", "Split vertical")
map("n", "<leader>h", "<C-w>s", "Split horizontal")
map("n", "<leader>se", "<C-w>=", "Equal split")
map("n", "<leader>xs", ":close<CR>", "Close split")

-- Navigate between splits
map("n", "<C-k>", ":wincmd k<CR>", "Move to upper split")
map("n", "<C-j>", ":wincmd j<CR>", "Move to lower split")
map("n", "<C-h>", ":wincmd h<CR>", "Move to left split")
map("n", "<C-l>", ":wincmd l<CR>", "Move to right split")

-- Tabs
map("n", "<leader>to", ":tabnew<CR>", "Open new tab")
map("n", "<leader>tx", ":tabclose<CR>", "Close current tab")
map("n", "<leader>tn", ":tabn<CR>", "Next tab")
map("n", "<leader>tp", ":tabp<CR>", "Previous tab")

-- Toggle line wrapping
map("n", "<leader>lw", ":set wrap!<CR>", "Toggle line wrapping")

-- Stay in indent mode
map("v", "<", "<gv", "De-indent (stay in visual)")
map("v", ">", ">gv", "Indent (stay in visual)")

-- Keep last yanked when pasting
map("v", "p", '"_dP', "Paste without yanking deleted text")

-- Mini.files
map("n", "<leader>e", ":lua MiniFiles.open(vim.api.nvim_buf_get_name(0))<CR>", "Open at current directory")
map("n", "<leader>el", ":lua MiniFiles.open()<CR>", "Open in last used state")
