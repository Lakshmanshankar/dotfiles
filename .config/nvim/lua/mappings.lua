require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
--
--
-- SPLIT
map("n", "<leader>|", "<cmd>vsp<CR>", { desc = "vertical split" })
map("n", "<leader>-", "<cmd>sp<CR>", { desc = "horizontal split" })
map("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { desc = "nvimtree focus window" })
map("n", "<leader>ck", "<cmd>TSContextToggle<CR>", { desc = "Toggle Treesitter context" })
map("n", "<leader>cf", function()
  require("conform").format { lsp_fallback = true }
end, { desc = "format files" })

-- TELESCOPE 🔭
-- map("n", "<leader>/", "<cmd>Telescope live_grep<CR>", { desc = "telescope live grep" })
map("n", "<leader>hr", "<cmd>Telescope lsp_references<CR>", { desc = "telescope LSP References" })
-- map("n", "<leader><leader>", "<cmd>Telescope find_files<cr>", { desc = "telescope find files" })
map("n", "<leader>ud", "<cmd>lua vim.diagnostic.disable()<CR>", { desc = "disable diagnostic" })
map("n", "<leader>ua", "<cmd>lua vim.diagnostic.enable()<CR>", { desc = "disable diagnostic" })
map("n", "<leader>cha", "<cmd>TSToggle highlight<CR>", { desc = "enable code highlight" })
map("n", "<leader>hi", "<cmd>IconPickerYank<CR>", { desc = "Icon Picker Yank" })

-- TELESCOPE GIT
map("n", "<leader>gc", "<cmd>Telescope git_commits<CR>", { desc = "Git commits" })
map("n", "<leader>gs", "<cmd>Telescope git_status<CR>", { desc = "Git Status" })
map("n", "<leader>gb", function()
  package.loaded.gitsigns.blame_line()
end, { desc = "Git blame_line" })

map("n", "<leader>st", "<cmd>TodoTelescope <CR>", { desc = "Project Todo/Info" })

map("n", "<leader>tw", "<cmd>set wrap!<CR>", { desc = "Toggle wrap" })

-- GREP WITH FILTERS Moved to telescope
-- map("n", "<leader>sg", require("telescope").extensions.menufacture.live_grep, { desc = "Live Grep with Filter" })
-- map("n", "<leader>sw", require("telescope").extensions.menufacture.grep_string, { desc = "File search with Filter" })
--
map("n", "<C-d>", "<C-d>zz<CR>", { silent = true, noremap = true })
map("n", "<C-u>", "<C-u>zz<CR>", { silent = true, noremap = true })
