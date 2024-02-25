-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
vim.api.nvim_set_keymap("n", "<leader>t", ":ToggleTerm<CR>", { silent = true })
vim.api.nvim_set_keymap("n", "<leader>ii", ":IconPickerYank<CR>", { silent = true })
-- vim.api.nvim_set_keymap("i", "<C-Space>", 'copilot#Accept(" < CR > ")', { expr = true, replace_keycodes = false })

-- Vim Enable
-- vim.g.copilot_no_tab_map = true
-- vim.b.copilot_enabled = false

-- AI Copilot Keymaps and Codeium Keymaps
vim.g.copilot_no_tab_map = true
vim.api.nvim_set_keymap("i", "<C-j>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
vim.api.nvim_set_keymap("i", "<C-k>", "codeium#Accept()", { silent = true, expr = true })


vim.api.nvim_set_keymap('n', '<leader>sl', [[<cmd>lua require('telescope.builtin').find_files({search_dirs = {'~/.home_make'}, prompt_title = "Home Links"})<CR>]], { noremap = true, silent = true })