local M = {}

-- INIT.LUA OF NVCHAD CONFIG
M.ui = { theme = "ayu_dark" }
M.plugins = "custom.plugins"
-- M.plugins = "custom.formatter" -- MOVED FORMATTING TO SEPARATE FILE
M.mappings = require "custom.mappings"

return M
