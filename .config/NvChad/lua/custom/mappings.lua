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

M.move_files = {
	n = {
		["<leader>bd"] = {
			function()
				require("nvchad.tabufline").close_buffer()
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

M.cases = {
	n = {
		["<leader>ci"] = { "<cmd> TextCaseOpenTelescopeLSPChange <CR>" },
		["<A-j>"] = { "<cmd> m .+1 <CR>" },
		["<A-k>"] = { "<cmd> m .-2 <CR>" },
	},
	i = {
		["<A-j>"] = { "<esc><cmd>m .+1<cr>==gi <CR>" },
		["<A-k>"] = { "<esc><cmd>m .-2<cr>==gi <CR>" },
	},
	v = {
		["<A-j>"] = { "<cmd> m '>+1<cr>gv=gv <CR>" },
		["<A-k>"] = { "<cmd> m '<-2<cr>gv=gv<CR>" },
	},
}

M.utils = {
	n = {
		["<C-c>"] = { "<cmd> %y+ <CR>", "Copy whole file" },
		["<leader>ww"] = { "<cmd> set wrap!<CR>", "disable word wrap" },
		["<leader>wv"] = { "<cmd> set wrap!<CR>", "enable word wrap" },
		["<leader>gg"] = { "<cmd> LazyGit <CR>", "lazygit current " },
		-- ["<leader>ii"] = { "<cmd> IconPickerYank <CR>", "Icon Picker " },
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

M.move_files = {
	i = {
		["<C-j"] = { "<cmd>m .+1<CR>", "move line up" },
	},
}

M.telescope = {
	n = {
		["<C-n>"] = { "<cmd> Telescope <CR>", "Telescope" },
		["<leader><leader>"] = { "<cmd> Telescope find_files <CR>", "Find files" },
		["<leader>|"] = { "<cmd> vsp <CR>", " Vertical split" },
		["<leader>/"] = { "<cmd> Telescope live_grep <CR>", " Horizontal split" },
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
