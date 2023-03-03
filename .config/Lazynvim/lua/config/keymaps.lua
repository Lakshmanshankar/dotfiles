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
vim.api.nvim_set_keymap("i", "jk", "Esc", { silent = true, expr = true })

vim.api.nvim_set_keymap("n", "<leader> ct", "TextCaseOpenTelescopeLSPChange", { silent = true, noremap = true })
vim.api.nvim_set_keymap("n", "<C-d>", "<C-d>zz<CR>", { silent = true, noremap = true })
vim.api.nvim_set_keymap("n", "<C-u>", "<C-u>zz<CR>", { silent = true, noremap = true })

vim.api.nvim_set_keymap("n", "n", "nzzzz<CR>", { silent = true, noremap = true })
