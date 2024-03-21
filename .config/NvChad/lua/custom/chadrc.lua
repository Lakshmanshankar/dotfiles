--
-- local vim = vim
-- local opt = vim.opt
--
-- opt.foldmethod = "expr"
-- opt.foldexpr = "nvim_treesitter#foldexpr()"
local M = {}

-- INIT.LUA OF NVCHAD CONFIG
M.ui = {
	theme = "tokyonight",
	statusline = {
		theme = "vscode_colored", -- default/vscode/vscode_colored/minimal
		separator_style = "default",
		overriden_modules = nil,
	},
	telescope = { style = "bordered" },
	transparency = false,
}

M.plugins = "custom.plugins"
-- M.plugins = "custom.formatter" -- MOVED FORMATTING TO SEPARATE FILE
M.mappings = require "custom.mappings"

return M
