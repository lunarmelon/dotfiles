local M = {}

--- LSP symbol kinds.
M.symbol_kinds = {
	Array = "󰅪",
	Class = "",
	Color = "󰏘",
	Constant = "󰏿",
	Constructor = "",
	Enum = "",
	EnumMember = "",
	Event = "",
	Field = "󰜢",
	File = "󰈙",
	Folder = "󰉋",
	Function = "󰆧",
	Interface = "",
	Keyword = "󰌋",
	Method = "󰆧",
	Module = "",
	Operator = "󰆕",
	Property = "󰜢",
	Reference = "󰈇",
	Snippet = "",
	Struct = "",
	Text = "",
	TypeParameter = "",
	Unit = "",
	Value = "",
	Variable = "󰀫",
}

--- Diagnostic severities.
M.diagnostics = {
	ERROR = " ",
	WARN = " ",
	HINT = "󰌵",
	INFO = " ",
}

return M
