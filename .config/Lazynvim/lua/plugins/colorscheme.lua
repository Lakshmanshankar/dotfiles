return {
	{
		"catppuccin/nvim",
		lazy = true,
		name = "catppuccin",
		opts = {
			integrations = {
				aerial = true,
				alpha = true,
				cmp = true,
				dashboard = true,
				flash = true,
				gitsigns = true,
				headlines = true,
				illuminate = true,
				indent_blankline = { enabled = true },
				leap = true,
				lsp_trouble = true,
				mason = true,
				markdown = true,
				mini = true,
				native_lsp = {
					enabled = true,
					underlines = {
						errors = { "undercurl" },
						hints = { "undercurl" },
						warnings = { "undercurl" },
						information = { "undercurl" },
					},
				},
				navic = { enabled = true, custom_bg = "lualine" },
				neotest = true,
				neotree = true,
				noice = true,
				notify = true,
				semantic_tokens = true,
				telescope = true,
				treesitter = true,
				treesitter_context = true,
				which_key = true,
			},
		},
	},

	{ "rebelot/kanagawa.nvim" },
	-- rose-pine
	{ "rose-pine/neovim", name = "rose-pine" },
	-- one-dark
	{
		"olimorris/onedarkpro.nvim",
		priority = 1000, -- Ensure it loads first
	},
	-- Configure LazyVim to load gruvbox 
	{ "ellisonleao/gruvbox.nvim" },

	{ "Mofiqul/vscode.nvim" },
	-- Configure LazyVim to load gruvbox
	{
		"tiagovla/tokyodark.nvim",
		opts = {
			-- custom options here
		},
		config = function(_, opts)
			require("tokyodark").setup(opts) -- calling setup is optional
		end,
	},

	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "tokyonight-night",
			-- colorscheme = "catppuccin-mocha",
		},
	},
}
