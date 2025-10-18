-- This file  needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "rosepine",
  statusline = {
    theme = "vscode_colored", -- default/vscode/vscode_colored/minimal
    separator_style = "default",
    overriden_modules = nil,
  },
  theme_toggle = { "onedark", "monochrome" },
  transparency = true,
  hl_override = {
    Comment = { italic = true },
    ["@comment"] = { italic = true },
    TelescopeBorder = {
      fg = "#2a273f",
    },
  },
}

return M
