require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- SPLIT
map("n", "<leader>|", "<cmd>vsp<CR>", { desc = "vertical split" })
map("n", "<leader>-", "<cmd>sp<CR>", { desc = "horizontal split" })
map("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { desc = "nvimtree focus window" })

map("n", "<leader>ck", "<cmd>TSContextToggle<CR>", { desc = "Toggle Treesitter context" })
map("n", "<leader>fm", function()
  require("conform").format { lsp_fallback = true }
end, { desc = "format files" })

-- TELESCOPE 🔭
-- map("n", "<leader>fr", "<cmd>Telescope lsp_references<CR>", { desc = "telescope LSP References" })
-- map("n", "<leader><leader>", "<cmd>Telescope find_files<cr>", { desc = "telescope find files" })
map("n", "<leader>ud", "<cmd>lua vim.diagnostic.disable()<CR>", { desc = "disable diagnostic" })
map("n", "<leader>ue", "<cmd>lua vim.diagnostic.enable()<CR>", { desc = "disable diagnostic" })
map("n", "<leader>cha", "<cmd>TSToggle highlight<CR>", { desc = "enable code highlight" })

-- TELESCOPE GIT
map("n", "<leader>gc", "<cmd>Telescope git_commits<CR>", { desc = "Git commits" })
map("n", "<leader>gs", "<cmd>Telescope git_status<CR>", { desc = "Git Status" })
map("n", "<leader>gb", function()
  package.loaded.gitsigns.blame_line()
end, { desc = "Git blame_line" })

map("n", "<leader>tw", "<cmd>set wrap!<CR>", { desc = "Toggle wrap" })

map("n", "<C-d>", "<C-d>zz<CR>", { silent = true, noremap = true })
map("n", "<C-u>", "<C-u>zz<CR>", { silent = true, noremap = true })

if require("nvconfig").ui.tabufline.enabled then
  map("n", "<leader>b", "<cmd>enew<CR>", { desc = "buffer new" })

  map("n", "<tab>", function()
    require("nvchad.tabufline").next()
  end, { desc = "buffer goto next" })

  map("n", "<S-tab>", function()
    require("nvchad.tabufline").prev()
  end, { desc = "buffer goto prev" })

  map("n", "<leader>x", function()
    require("nvchad.tabufline").close_buffer()
  end, { desc = "buffer close" })
end
