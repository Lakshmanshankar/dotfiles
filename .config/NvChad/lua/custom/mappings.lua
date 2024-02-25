local M = {}

-- In order to disable a default keymap, use
M.disabled = {
	n = {
		-- ["<leader>h"] = "",
		["<C-a>"] = "",
		-- ["<Tab>"] = "", turn on this only when u have copilot she deserves a TAB
	},

	i = {
		["<Tab>"] = "", --turn on this only when u have copilot she deserves a TAB
	},
}

M.copilot = {
	plugin = true,
	i = {
		["<C-j>"] = {
			function()
				require("copilot").accept()
			end,
		},
	},
}

M.dap = {
	plugin = true,
	n = {
		["<leader>db"] = { "<cmd> DapToggleBreakpoint <CR>" },
	},
	["<leader>dpr"] = {
		function()
			require("dap-python").test_method()
		end,
	},
}

M.utils = {
	n = {
		["<C-c>"] = { "<cmd> %y+ <CR>", "Copy whole file" },
		["<leader>gg"] = { "<cmd> LazyGit <CR>", "lazygit current " },
		["<leader>ii"] = { "<cmd> IconPickerYank <CR>", "Icon Picker " },
	},
}

M.lspconfig = {
	n = {
		["gd"] = { "<cmd>Telescope lsp_definitions<CR>", "definitions" },
		["gr"] = { "<cmd> Telescope lsp_references <CR>", "references" },
		["<leader>cr"] = {
			function()
				require("nvchad.renamer").open()
			end,
			"lsp rename",
		},
	},
}

-- Your custom mappings
M.telescope = {
	n = {
		["<C-n>"] = { "<cmd> Telescope <CR>", "Telescope" },
		["<leader><leader>"] = { "<cmd> Telescope find_files <CR>", "Find files" },
		["<leader>|"] = { "<cmd> vsp <CR>", " Vertical split" },
		["<leader>_"] = { "<cmd> sp <CR>", " Horizontal split" },
		["<leader>e"] = { "<cmd> NvimTreeToggle<CR>", "Toggle NvimTree" },
		-- ["<C-s>"] = { ":Telescope Files <CR>", "Telescope Files" },
		-- ["<C-e>"] = { ":Lazy load conform.nvim <CR>", "Telescope Files" },
	},
	i = {
		["jk"] = { "<ESC>", "escape insert mode", opts = { nowait = true } },
	},
}

return M
