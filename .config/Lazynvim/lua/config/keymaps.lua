-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.api.nvim_set_keymap("n", "<leader>t", ":ToggleTerm<CR>", { silent = true })
vim.api.nvim_set_keymap("n", "<leader>ii", ":IconPickerYank<CR>", { silent = true })
vim.api.nvim_set_keymap("n", "<leader>bd", ":BufferLineCloseOthers<CR>", { silent = true })

-- vim.api.nvim_set_keymap("n", "<leader>r", ":Telescope oldfiles<CR>", { silent = true })

vim.g.copilot_no_tab_map = true
vim.api.nvim_set_keymap("i", "<C-j>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
vim.api.nvim_set_keymap("i", "<C-k>", "codeium#Accept()", { silent = true, expr = true })

-- Create a key mapping for the copy_and_write function
vim.api.nvim_set_keymap("n", "<C-c>", "<cmd>%y+<CR>", { silent = true, noremap = true })

-- Harpoon

local function add_file()
  vim.cmd(":lua require('harpoon.mark').add_file()")
end

local function show_harpoon()
  vim.cmd(":lua require('harpoon.ui').toggle_quick_menu()")
end

local function show_harpoon()
  vim.cmd(":lua require('harpoon.ui').nav_next()")
end

local function show_harpoon()
  vim.cmd(":lua require('harpoon.ui').nav_prev()")
end
-- Add the keymap for adding a file
vim.api.nvim_set_keymap(
  "n",
  "<leader>ha",
  ':lua require("harpoon.mark").add_file()<CR>',
  { noremap = true, silent = true }
)

-- Add the keymap for showing the harpoon menus
vim.api.nvim_set_keymap(
  "n",
  "<leader>hd",
  ':lua require("harpoon.ui").toggle_quick_menu()<CR>',
  { noremap = true, silent = true }
)

vim.api.nvim_set_keymap("n", "<leader>hh", ":Telescope harpoon marks<CR>", { noremap = true, silent = true })
-- Add the keymap for showing the harpoon menus
vim.api.nvim_set_keymap(
  "n",
  "<leader>hn",
  ':lua require("harpoon.ui").nav_next()<CR>',
  { noremap = true, silent = true }
)
