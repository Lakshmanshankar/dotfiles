-- bootstrap lazy.nvim, LazyVim and your plugins
require "config.lazy"

vim.opt.tabstop = 4 -- Number of spaces tabs count for
vim.opt.shiftwidth = 4 -- Number of spaces to use for auto-indent
vim.opt.softtabstop = 4 -- Number of spaces to use when editing

vim.keymap.set("n", "<leader>sg", require("telescope").extensions.menufacture.live_grep)
vim.keymap.set("n", "<leader>sw", require("telescope").extensions.menufacture.grep_string)
