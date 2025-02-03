require("nvchad.mappings")

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

vim.keymap.set("n", "<leader>ob", function()
	if vim.o.showtabline == 2 then
		vim.o.showtabline = 0
		vim.notify("Toggled Off", vim.log.levels.INFO, { title = "Tabufline" })
	else
		vim.o.showtabline = 2
		vim.notify("Toggled On", vim.log.levels.INFO, { title = "Tabufline" })
	end
end, { desc = "Options | Toggle Tabufline", silent = true })

-- Toggle Statusline
vim.keymap.set("n", "<leader>os", function()
	if vim.o.laststatus == 3 then
		vim.o.laststatus = 0
		vim.notify("Toggled Off", vim.log.levels.INFO, { title = "Statusline" })
	else
		vim.o.laststatus = 3
		vim.notify("Toggled On", vim.log.levels.INFO, { title = "Statusline" })
	end
end, { desc = "Options | Toggle Statusline", silent = true })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr
-- SPLIT
map("n", "<leader>|", "<cmd>vsp<CR>", { desc = "vertical split" })
map("n", "<leader>-", "<cmd>sp<CR>", { desc = "horizontal split" })
map("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { desc = "nvimtree focus window" })
map("n", "<leader>ck", "<cmd>TSContextToggle<CR>", { desc = "Toggle Treesitter context" })
map("n", "<leader>cf", function()
	require("conform").format({ lsp_fallback = true })
end, { desc = "format files" })

-- TELESCOPE 🔭
-- map("n", "<leader>/", "<cmd>Telescope live_grep<CR>", { desc = "telescope live grep" })
map("n", "<leader>hr", "<cmd>Telescope lsp_references<CR>", { desc = "telescope LSP References" })
-- map("n", "<leader><leader>", "<cmd>Telescope find_files<cr>", { desc = "telescope find files" })
map("n", "<leader>ud", "<cmd>lua vim.diagnostic.disable()<CR>", { desc = "disable diagnostic" })
map("n", "<leader>ua", "<cmd>lua vim.diagnostic.enable()<CR>", { desc = "disable diagnostic" })
map("n", "<leader>cha", "<cmd>TSToggle highlight<CR>", { desc = "enable code highlight" })
map("n", "<leader>ii", "<cmd>IconPickerYank<CR>", { desc = "Icon Picker Yank" })
map("n", "<leader>ds", ":Telescope lsp_document_symbols<CR>", { silent = true, desc = "Search Document symbols" })
-- TELESCOPE GIT
map("n", "<leader>gc", "<cmd>Telescope git_commits<CR>", { desc = "Git commits" })
map("n", "<leader>gs", "<cmd>Telescope git_status<CR>", { desc = "Git Status" })
map("n", "<leader>gb", function()
	package.loaded.gitsigns.blame_line()
end, { desc = "Git blame_line" })

map("n", "<leader>st", "<cmd>TodoTelescope <CR>", { desc = "Project Todo/Info" })
map("n", "<leader>tw", "<cmd>set wrap!<CR>", { desc = "Toggle wrap" })
map("n", "<C-d>", "<C-d>zz<CR>", { silent = true, noremap = true })
map("n", "<C-u>", "<C-u>zz<CR>", { silent = true, noremap = true })
map(
	"n",
	"<leader>fw",
	require("telescope").extensions.menufacture.live_grep,
	{ desc = "[S]earch by [G]rep with Filter" }
)

map("n", "<leader>tt", function()
	require("base46").toggle_transparency()
end, { silent = true, noremap = true, desc = "Toggle Transparency" })
