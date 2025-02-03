require "nvchad.options"

-- local o = vim.o
-- o.cursorlineopt = 'both' -- to enable cursorline!
--
local g = vim.g
g.vscode_snippets_path = "/home/codevantage/.config/Code/User/snippets"

local vim = vim
local opt = vim.opt

opt.foldmethod = "expr"
opt.foldlevel = 99
opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.tabstop = 4     -- Number of spaces tabs count for
vim.opt.shiftwidth = 4  -- Number of spaces to use for auto-indent
vim.opt.softtabstop = 4 -- Number of spaces to use when editing
vim.opt.wrap = false    -- HATE this is not default
vim.backupcopy = true

require "nvchad.options"

vim.api.nvim_create_autocmd({"BufWinLeave"}, {
  pattern = {"*.*"},
  desc = "save view (folds), when closing file",
  command = "mkview",
})
vim.api.nvim_create_autocmd({"BufWinEnter"}, {
  pattern = {"*.*"},
  desc = "load view (folds), when opening file",
  command = "silent! loadview"
})
