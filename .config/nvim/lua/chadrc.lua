-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {
	ui = {
		statusline = {
			theme = "vscode_colored", -- default/vscode/vscode_colored/minimal
		},
	},
}

M.base46 = {
	theme = "catppuccin",
	transparency = false,
}

return M
